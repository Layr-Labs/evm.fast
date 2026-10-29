import InitECandidate.Proofs.BackendStages.AllocChunk688_703
import InitECandidate.Proofs.BackendStages.Removed688
import InitECandidate.Proofs.BackendStages.Removed689
import InitECandidate.Proofs.BackendStages.Removed690
import InitECandidate.Proofs.BackendStages.Removed691
import InitECandidate.Proofs.BackendStages.Removed692
import InitECandidate.Proofs.BackendStages.Removed693
import InitECandidate.Proofs.BackendStages.Removed694
import InitECandidate.Proofs.BackendStages.Removed695
import InitECandidate.Proofs.BackendStages.Removed696
import InitECandidate.Proofs.BackendStages.Removed697
import InitECandidate.Proofs.BackendStages.Removed698
import InitECandidate.Proofs.BackendStages.Removed699
import InitECandidate.Proofs.BackendStages.Removed700
import InitECandidate.Proofs.BackendStages.Removed701
import InitECandidate.Proofs.BackendStages.Removed702
import InitECandidate.Proofs.BackendStages.Removed703
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages.RemovedChunk688_703
def bodies : List (Nat × StackLang.HolProg 64) := [Removed688, Removed689, Removed690, Removed691, Removed692, Removed693, Removed694, Removed695, Removed696, Removed697, Removed698, Removed699, Removed700, Removed701, Removed702, Removed703]
theorem compiled_eq : AllocChunk688_703.bodies.map (StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3))) = bodies := by
  change [StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc688, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc689, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc690, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc691, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc692, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc693, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc694, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc695, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc696, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc697, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc698, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc699, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc700, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc701, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc702, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc703] = bodies
  rw [Removed688_eq, Removed689_eq, Removed690_eq, Removed691_eq, Removed692_eq, Removed693_eq, Removed694_eq, Removed695_eq, Removed696_eq, Removed697_eq, Removed698_eq, Removed699_eq, Removed700_eq, Removed701_eq, Removed702_eq, Removed703_eq]
  rfl
#print axioms compiled_eq
end InitECandidate.Proofs.BackendStages.RemovedChunk688_703
