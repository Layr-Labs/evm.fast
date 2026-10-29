import InitECandidate.Proofs.BackendStages.AllocChunk320_335
import InitECandidate.Proofs.BackendStages.Removed320
import InitECandidate.Proofs.BackendStages.Removed321
import InitECandidate.Proofs.BackendStages.Removed322
import InitECandidate.Proofs.BackendStages.Removed323
import InitECandidate.Proofs.BackendStages.Removed324
import InitECandidate.Proofs.BackendStages.Removed325
import InitECandidate.Proofs.BackendStages.Removed326
import InitECandidate.Proofs.BackendStages.Removed327
import InitECandidate.Proofs.BackendStages.Removed328
import InitECandidate.Proofs.BackendStages.Removed329
import InitECandidate.Proofs.BackendStages.Removed330
import InitECandidate.Proofs.BackendStages.Removed331
import InitECandidate.Proofs.BackendStages.Removed332
import InitECandidate.Proofs.BackendStages.Removed333
import InitECandidate.Proofs.BackendStages.Removed334
import InitECandidate.Proofs.BackendStages.Removed335
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages.RemovedChunk320_335
def bodies : List (Nat × StackLang.HolProg 64) := [Removed320, Removed321, Removed322, Removed323, Removed324, Removed325, Removed326, Removed327, Removed328, Removed329, Removed330, Removed331, Removed332, Removed333, Removed334, Removed335]
theorem compiled_eq : AllocChunk320_335.bodies.map (StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3))) = bodies := by
  change [StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc320, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc321, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc322, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc323, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc324, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc325, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc326, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc327, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc328, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc329, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc330, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc331, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc332, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc333, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc334, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc335] = bodies
  rw [Removed320_eq, Removed321_eq, Removed322_eq, Removed323_eq, Removed324_eq, Removed325_eq, Removed326_eq, Removed327_eq, Removed328_eq, Removed329_eq, Removed330_eq, Removed331_eq, Removed332_eq, Removed333_eq, Removed334_eq, Removed335_eq]
  rfl
#print axioms compiled_eq
end InitECandidate.Proofs.BackendStages.RemovedChunk320_335
