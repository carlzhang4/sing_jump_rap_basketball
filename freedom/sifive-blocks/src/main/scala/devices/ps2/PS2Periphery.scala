
package sifive.blocks.devices.ps2

import freechips.rocketchip.config.Field
import freechips.rocketchip.diplomacy._
import freechips.rocketchip.subsystem.{BaseSubsystem, PeripheryBusKey}

case object PeripheryPS2Key extends Field[Seq[PS2Params]]

trait HasPeripheryPS2 { this: BaseSubsystem =>
  val ps2Nodes = p(PeripheryPS2Key).map { ps => PS2.attach(PS2AttachParams(ps, pbus, ibus.fromAsync)).ioNode.makeSink }
}

trait HasPeripheryPS2Bundle {
  val ps2: Seq[PS2PortIO]
}

trait HasPeripheryPS2ModuleImp extends LazyModuleImp with HasPeripheryPS2Bundle {//todo
  val outer: HasPeripheryPS2
  val ps2 = outer.ps2Nodes.zipWithIndex.map { case(n,i) => n.makeIO()(ValName(s"ps2_$i")) }
}