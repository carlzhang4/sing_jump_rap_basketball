package solutions

import chisel3._

import sifive.blocks.util.{NonBlockingEnqueue, NonBlockingDequeue} //todo

class PS2PortIO(val c: PS2Params) extends Bundle {  //todo
  val ps2_clk = Bool(INPUT)
  val ps2_data = Bool(INPUT)
  }


object PS2{
    def risingedge(x: Bool) = x && !RegNext(x)

    def attach(params: PS2AttachParams): TLGPIO = {//todo
    implicit val p = params.p
    val name = s"gpio_${nextId()}"
    val cbus = params.controlBus
    val gpio = LazyModule(new TLGPIO(cbus.beatBytes, params.gpio))
    gpio.suggestName(name)

    cbus.coupleTo(s"device_named_$name") {
      gpio.controlXing(params.controlXType) := TLFragmenter(cbus.beatBytes, cbus.blockBytes) := _
    }
    params.intNode := gpio.intXing(params.intXType)
    InModuleBody { gpio.module.clock := params.mclock.map(_.getWrappedValue).getOrElse(cbus.module.clock) }
    InModuleBody { gpio.module.reset := params.mreset.map(_.getWrappedValue).getOrElse(cbus.module.reset) }

    gpio
  }
}

case class PS2Params( //todo
    address:BigInt
)

case class PS2AttachParams( //todo
  ps2: PS2Params,
  controlBus: TLBusWrapper,
  intNode: IntInwardNode,
  controlXType: ClockCrossingType = NoCrossing,
  intXType: ClockCrossingType = NoCrossing,
  mclock: Option[ModuleValue[Clock]] = None,
  mreset: Option[ModuleValue[Bool]] = None)
  (implicit val p: Parameters)

class PS2 extends Module{
    val io = IO(new Bundle{
        val ps2_data = Input(Bool())
        val ps2_clk = Input(UInt(1.W))

        val data = Valid(Bits(width=9))  //todo
    })

    val buffer = RegInit(0.U(10.W))
    val count = RegInit(0.U(4.W))
    val ps2_clk_sync = RegInit(0.U(4.W))

    ps2_clk_sync := (ps2_clk_sync  << 1.U) + io.ps2_clk
    val sampling = Wire(UInt(1.W))
    sampling := (ps2_clk_sync === "b1100".U).asUInt.toBool  //1100

    val valid = Reg(init = Bool(false))
    valid := Bool(false)
    io.data.valid := valid

    when(!io.clrn){
        count := 0.U
    }.elsewhen(sampling === 1.U){
        when(count === 10.U(4.W)){
            when((buffer(0) === 0.U) && (io.ps2_data) && buffer.xorR){
                io.data.bits := buffer>>1.U
                io.data.bits := io.data.bits | "b100000000".U
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

    val data_queue = Module(new Queue(io.data.bits,8)) //todo

    regmap(         //todo
    0x00-> RegFieldGroup("ps2data",Some("Transmit ps2 data"),
                           NonBlockingDequeue(data_queue.io.deq))
    )



    printf(p"${io.ps2_clk}  ")
    printf(p"$sampling  ")
    printf(p"$count  ")
    printf(p"${Binary(buffer)}  \n")
    //printf(p"myVec(1) = ${fifo(1)}\n")
    //printf(p"overflow = ${overflow}\n")
    // printf(p"reg = $reg\n")
    // printf(p"risingedge = ${PS2.risingedge(io.clrn)}\n")
    // printf(p"clrn = ${io.clrn}\n\n")

}