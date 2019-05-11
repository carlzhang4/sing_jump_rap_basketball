package solutions

import chisel3._

class PS2PortIO(val c: PS2Params) extends Bundle {  //todo
  val pins = Vec(c.width, new EnhancedPin())
  val iof_0 = if (c.includeIOF) Some(Vec(c.width, new IOFPin).flip) else None
  val iof_1 = if (c.includeIOF) Some(Vec(c.width, new IOFPin).flip) else None
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

        val clrn = Input(Bool())
        val rdn = Input(Bool())

        val data = Output(UInt(8.W))
        val ready = Output(Bool())
        val overflow = Output(UInt(1.W))
    })

    val fifo = Reg(Vec(8, UInt(8.W)))
    val buffer = RegInit(0.U(10.W))
    val count = RegInit(0.U(4.W))
    val w_ptr = RegInit(0.U(3.W))
    val r_ptr = RegInit(0.U(3.W))
    val ps2_clk_sync = RegInit(0.U(4.W))
    val overflow = RegInit(0.U(1.W))


    ps2_clk_sync := (ps2_clk_sync  << 1.U) + io.ps2_clk

    val sampling = Wire(UInt(1.W))
    sampling := (ps2_clk_sync === "b1100".U).asUInt.toBool  //1100

    when(!io.clrn){
        count := 0.U
        w_ptr := 0.U
        r_ptr := 0.U
        overflow := 0.U
    }.elsewhen(sampling === 1.U){
        when(count === 10.U(4.W)){
            when((buffer(0) === 0.U) && (io.ps2_data) && buffer.xorR){
                when((w_ptr+1.U(3.W)) =/= r_ptr){
                    fifo(w_ptr) := buffer>>1.U
                    w_ptr := w_ptr + 1.U(3.W)
                }.otherwise{
                    overflow := 1.U
                }
            }
            count := 0.U;
        }.otherwise{
            buffer := (buffer - (buffer(count)<<count)) | (io.ps2_data<<count)
            count := count + 1.U(4.W)
        }
    }
    when(!io.rdn && io.ready){
        r_ptr := r_ptr + 1.U(3.W)
        overflow := 0.U
    }

    io.ready := (w_ptr =/= r_ptr)
    io.data := fifo(r_ptr)

    val ps2q = Module(new Queue(8,8))

    ps2q.io.enq <> (buffer>>1.U) & 0x11111111    //todo

    regmap(         //todo
    0x00-> RegFieldGroup("ps2data",Some("Transmit data"),
                           NonBlockingEnqueue(data)),
    0x04-> RegFieldGroup("rxdata",Some("Receive data"),
                           NonBlockingDequeue(rxq.io.deq)),

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

    io.overflow := overflow
}