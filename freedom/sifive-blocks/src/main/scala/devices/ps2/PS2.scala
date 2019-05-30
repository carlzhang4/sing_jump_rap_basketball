package sifive.blocks.devices.ps2

import Chisel._
import freechips.rocketchip.config.Parameters
import freechips.rocketchip.diplomacy._
import freechips.rocketchip.interrupts._
import freechips.rocketchip.regmapper._
import freechips.rocketchip.tilelink._

import sifive.blocks.util.{NonBlockingEnqueue, NonBlockingDequeue}

class PS2PortIO extends Bundle {  //todo
  val ps2_clk = Bool(INPUT)
  val ps2_data = Bool(INPUT)
  }


object PS2{
  val nextId = { var i = -1; () => { i += 1; i} }

  def attach(params: PS2AttachParams): TLPS2 = {//todo
      implicit val p = params.p
      val name = s"ps2_${nextId()}"
      val cbus = params.controlBus
      val ps2 = LazyModule(new TLPS2(cbus.beatBytes, params.ps2))
      ps2.suggestName(name)

      cbus.coupleTo(s"device_named_$name") {
        ps2.controlXing(params.controlXType) := TLFragmenter(cbus.beatBytes, cbus.blockBytes) := _
      }
      params.intNode := ps2.intXing(params.intXType)
      InModuleBody { ps2.module.clock := params.mclock.map(_.getWrappedValue).getOrElse(cbus.module.clock) }
      InModuleBody { ps2.module.reset := params.mreset.map(_.getWrappedValue).getOrElse(cbus.module.reset) }

      ps2
  }

  def attachAndMakePort(params: PS2AttachParams): ModuleValue[PS2PortIO] = {
    val ps2 = attach(params)
    val ps2Node = ps2.ioNode.makeSink()(params.p)
    InModuleBody { ps2Node.makeIO()(ValName(ps2.name)) }
  }
}

case class PS2Params( //todo
    address:BigInt
)

class TLPS2(busWidthBytes: Int, params: PS2Params)(implicit p: Parameters)
  extends PS2(busWidthBytes, params) with HasTLControlRegMap

case class PS2AttachParams( //todo
  ps2: PS2Params,
  controlBus: TLBusWrapper,
  intNode: IntInwardNode,
  controlXType: ClockCrossingType = NoCrossing,
  intXType: ClockCrossingType = NoCrossing,
  mclock: Option[ModuleValue[Clock]] = None,
  mreset: Option[ModuleValue[Bool]] = None)
  (implicit val p: Parameters)

abstract class PS2(busWidthBytes: Int, val c: PS2Params)
                  (implicit p: Parameters)
    extends IORegisterRouter(
      RegisterRouterParams(
        name = "serial",
        compat = Seq("sifive,ps2"), 
        base = c.address,
        beatBytes = busWidthBytes),
      new PS2PortIO)
      with HasInterruptSources{

//    val io = IO(new Bundle{
//        val ps2_data = Input(Bool())
//        val ps2_clk = Input(UInt(1.W))
//        val data = Valid(Bits(width=9))  //todo
//    })
    //这里不需要io新定义ps2_data和ps2_clk，因为这个东西是在port里面的
    //data要单独拿出来，因为PS2IOport里面没有这个东西
    def nInterrupts = 1

    ResourceBinding {
    Resource(ResourceAnchors.aliases, "ps2").bind(ResourceAlias(device.label))
  }

    
    lazy val module = new LazyModuleImp(this) {
      
    val ps2rxm = Module(new PS2Rx())

    val data_queue = Module(new Queue(ps2rxm.io.data.bits,8)) //todo


    ps2rxm.io.ps2_clk := port.ps2_clk
    ps2rxm.io.ps2_data := port.ps2_data
    data_queue.io.enq <> ps2rxm.io.data;
    
    
    regmap(         //todo
    0x00-> RegFieldGroup("ps2data",Some("Transmit ps2 data"),
                           NonBlockingDequeue(data_queue.io.deq))
    )
    }



    // printf(p"${io.ps2_clk}  ")
    // printf(p"$sampling  ")
    // printf(p"$count  ")
    // printf(p"${Binary(buffer)}  \n")
    //printf(p"myVec(1) = ${fifo(1)}\n")
    //printf(p"overflow = ${overflow}\n")
    // printf(p"reg = $reg\n")
    // printf(p"risingedge = ${PS2.risingedge(io.clrn)}\n")
    // printf(p"clrn = ${io.clrn}\n\n")

}