// See LICENSE for license details.
package sifive.fpgashells.shell

import chisel3._
import freechips.rocketchip.config._
import freechips.rocketchip.diplomacy._
import sifive.blocks.devices.ps2._
import freechips.rocketchip.subsystem.{BaseSubsystem, PeripheryBus, PeripheryBusKey}
import freechips.rocketchip.tilelink.TLBusWrapper
import freechips.rocketchip.interrupts.IntInwardNode

//TODO: Can this be combined with PS2AttachParams?
case class PS2OverlayParams(ps2Params: PS2Params, controlBus: TLBusWrapper, intNode: IntInwardNode)(implicit val p: Parameters)
case object PS2OverlayKey extends Field[Seq[DesignOverlay[PS2OverlayParams, TLPS2]]](Nil)

// Tack on cts, rts signals available on some FPGAs. They are currently unused
// by our designs.
class FPGAPS2PortIO extends PS2PortIO {
  val rtsn = Output(Bool())
  val ctsn = Input(Bool())
}

//class PS2ReplacementBundle extends Bundle with HasPS2TopBundleContents

abstract class PS2Overlay(
  val params: PS2OverlayParams)
    extends IOOverlay[FPGAPS2PortIO, TLPS2]
{
  implicit val p = params.p

  def ioFactory = new FPGAPS2PortIO

  val tlps2 = PS2.attach(PS2AttachParams(params.ps2Params, params.controlBus, params.intNode))
  val tlps2Sink = tlps2.ioNode.makeSink
  val ps2Source = BundleBridgeSource(() => new PS2PortIO())
  val ps2Sink = shell { ps2Source.makeSink }

  val designOutput = tlps2

  InModuleBody {
    val (io, _) = ps2Source.out(0)
    val tlps2port = tlps2Sink.bundle
    io <> tlps2port
    tlps2port.ps2_clk := RegNext(RegNext(io.ps2_clk))
    tlps2port.ps2_data := RegNext(RegNext(io.ps2_data))
  }

  shell { InModuleBody {
    ps2Sink.bundle.ps2_clk := io.ps2_clk
    ps2Sink.bundle.ps2_data := io.ps2_data


    // Some FPGAs have this, we don't use it.
    io.rtsn := false.B
  } }
}