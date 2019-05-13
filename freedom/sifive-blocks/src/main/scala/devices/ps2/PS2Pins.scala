package sifive.blocks.devices.ps2

import Chisel._
import chisel3.experimental.{withClockAndReset}
import freechips.rocketchip.util.SyncResetSynchronizerShiftReg
import sifive.blocks.devices.pinctrl.{Pin}

class PS2Signals[T <: Data](private val pingen: () => T) extends Bundle {
  val ps2_clk = pingen()
  val ps2_data = pingen()
}

class PS2Pins[T <: Pin](pingen: () => T) extends PS2Signals[T](pingen)

object PS2PinsFromPort {
  def apply[T <: Pin](pins: PS2Signals[T], ps2: PS2PortIO, clock: Clock, reset: Bool, syncStages: Int = 0) {
    withClockAndReset(clock, reset) {
      val ps2_clk_t = pins.ps2_clk.inputPin()
      ps2.ps2_clk := SyncResetSynchronizerShiftReg(ps2_clk_t, syncStages, init = Bool(true), name = Some("ps2_clk_sync"))
      val ps2_data_t = pins.ps2_data.inputPin()
      ps2.ps2_clk := SyncResetSynchronizerShiftReg(ps2_data_t, syncStages, init = Bool(true), name = Some("ps2_clk_sync"))
    
    }
  }
}