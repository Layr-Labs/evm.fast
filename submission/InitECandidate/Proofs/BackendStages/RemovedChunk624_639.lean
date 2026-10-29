import InitECandidate.Proofs.BackendStages.AllocChunk624_639
import InitECandidate.Proofs.BackendStages.Removed624
import InitECandidate.Proofs.BackendStages.Removed625
import InitECandidate.Proofs.BackendStages.Removed626
import InitECandidate.Proofs.BackendStages.Removed627
import InitECandidate.Proofs.BackendStages.Removed628
import InitECandidate.Proofs.BackendStages.Removed629
import InitECandidate.Proofs.BackendStages.Removed630
import InitECandidate.Proofs.BackendStages.Removed631
import InitECandidate.Proofs.BackendStages.Removed632
import InitECandidate.Proofs.BackendStages.Removed633
import InitECandidate.Proofs.BackendStages.Removed634
import InitECandidate.Proofs.BackendStages.Removed635
import InitECandidate.Proofs.BackendStages.Removed636
import InitECandidate.Proofs.BackendStages.Removed637
import InitECandidate.Proofs.BackendStages.Removed638
import InitECandidate.Proofs.BackendStages.Removed639
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages.RemovedChunk624_639
def bodies : List (Nat × StackLang.HolProg 64) := [Removed624, Removed625, Removed626, Removed627, Removed628, Removed629, Removed630, Removed631, Removed632, Removed633, Removed634, Removed635, Removed636, Removed637, Removed638, Removed639]
theorem compiled_eq : AllocChunk624_639.bodies.map (StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3))) = bodies := by
  change [StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc624, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc625, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc626, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc627, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc628, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc629, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc630, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc631, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc632, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc633, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc634, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc635, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc636, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc637, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc638, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc639] = bodies
  rw [Removed624_eq, Removed625_eq, Removed626_eq, Removed627_eq, Removed628_eq, Removed629_eq, Removed630_eq, Removed631_eq, Removed632_eq, Removed633_eq, Removed634_eq, Removed635_eq, Removed636_eq, Removed637_eq, Removed638_eq, Removed639_eq]
  rfl
#print axioms compiled_eq
end InitECandidate.Proofs.BackendStages.RemovedChunk624_639
