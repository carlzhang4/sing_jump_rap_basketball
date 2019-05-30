// See LICENSE for license details.
package sifive.blocks.devices.ps2

import Chisel._

import freechips.rocketchip.util.Majority

class PS2Rx() extends Module {
    val io = new Bundle {
        val ps2_clk = Bits(INPUT,1)    
        val ps2_data = Bits(INPUT, 1)
        val data = Valid(Bits(width=8))
    }
    val buffer = Reg(init = UInt(0,10))
    val count = Reg(init = UInt(0,4))
    val ps2_clk_sync = Reg(init = UInt(0,4))

    ps2_clk_sync := (ps2_clk_sync  << 1.U) + io.ps2_clk
    val sampling = Wire(UInt(0,1))
    sampling := (ps2_clk_sync === "b1100".U).asUInt.toBool  //1100

    val valid = Reg(init = Bool(false))
    valid := Bool(false)
    io.data.valid := valid

    when(sampling === 1.U){
        when(count === 10.U(4.W)){
            when((buffer(0) === 0.U) && (io.ps2_data) && buffer.xorR){
                io.data.bits := buffer>>1.U
                // data.bits := data.bits | "b100000000".U
                valid := Bool(true)
                // when((w_ptr+1.U(3.W)) =/= r_ptr){
                //     fifo(w_ptr) := buffer>>1.U
                //     w_ptr := w_ptr + 1.U(3.W)
                // }.otherwise{
                //     overflow := 1.U
                // }
            }
            count := 0.U;
        }.otherwise{
            buffer := (buffer - (buffer(count)<<count)) | (io.ps2_data<<count)
            count := count + 1.U(4.W)
        }
    }
}