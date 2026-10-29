import InitECandidate.Proofs.BackendStages.AllocChunk736_751
import InitECandidate.Proofs.BackendStages.Removed736
import InitECandidate.Proofs.BackendStages.Removed737
import InitECandidate.Proofs.BackendStages.Removed738
import InitECandidate.Proofs.BackendStages.Removed739
import InitECandidate.Proofs.BackendStages.Removed740
import InitECandidate.Proofs.BackendStages.Removed741
import InitECandidate.Proofs.BackendStages.Removed742
import InitECandidate.Proofs.BackendStages.Removed743
import InitECandidate.Proofs.BackendStages.Removed744
import InitECandidate.Proofs.BackendStages.Removed745
import InitECandidate.Proofs.BackendStages.Removed746
import InitECandidate.Proofs.BackendStages.Removed747
import InitECandidate.Proofs.BackendStages.Removed748
import InitECandidate.Proofs.BackendStages.Removed749
import InitECandidate.Proofs.BackendStages.Removed750
import InitECandidate.Proofs.BackendStages.Removed751
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages.RemovedChunk736_751
def bodies : List (Nat × StackLang.HolProg 64) := [Removed736, Removed737, Removed738, Removed739, Removed740, Removed741, Removed742, Removed743, Removed744, Removed745, Removed746, Removed747, Removed748, Removed749, Removed750, Removed751]
theorem compiled_eq : AllocChunk736_751.bodies.map (StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3))) = bodies := by
  change [StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc736, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc737, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc738, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc739, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc740, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc741, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc742, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc743, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc744, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc745, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc746, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc747, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc748, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc749, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc750, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc751] = bodies
  rw [Removed736_eq, Removed737_eq, Removed738_eq, Removed739_eq, Removed740_eq, Removed741_eq, Removed742_eq, Removed743_eq, Removed744_eq, Removed745_eq, Removed746_eq, Removed747_eq, Removed748_eq, Removed749_eq, Removed750_eq, Removed751_eq]
  rfl
#print axioms compiled_eq
end InitECandidate.Proofs.BackendStages.RemovedChunk736_751
