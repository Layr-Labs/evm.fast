import InitECandidate.Proofs.BackendStages.AllocChunk752_767
import InitECandidate.Proofs.BackendStages.Removed752
import InitECandidate.Proofs.BackendStages.Removed753
import InitECandidate.Proofs.BackendStages.Removed754
import InitECandidate.Proofs.BackendStages.Removed755
import InitECandidate.Proofs.BackendStages.Removed756
import InitECandidate.Proofs.BackendStages.Removed757
import InitECandidate.Proofs.BackendStages.Removed758
import InitECandidate.Proofs.BackendStages.Removed759
import InitECandidate.Proofs.BackendStages.Removed760
import InitECandidate.Proofs.BackendStages.Removed761
import InitECandidate.Proofs.BackendStages.Removed762
import InitECandidate.Proofs.BackendStages.Removed763
import InitECandidate.Proofs.BackendStages.Removed764
import InitECandidate.Proofs.BackendStages.Removed765
import InitECandidate.Proofs.BackendStages.Removed766
import InitECandidate.Proofs.BackendStages.Removed767
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages.RemovedChunk752_767
def bodies : List (Nat × StackLang.HolProg 64) := [Removed752, Removed753, Removed754, Removed755, Removed756, Removed757, Removed758, Removed759, Removed760, Removed761, Removed762, Removed763, Removed764, Removed765, Removed766, Removed767]
theorem compiled_eq : AllocChunk752_767.bodies.map (StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3))) = bodies := by
  change [StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc752, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc753, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc754, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc755, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc756, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc757, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc758, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc759, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc760, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc761, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc762, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc763, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc764, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc765, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc766, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc767] = bodies
  rw [Removed752_eq, Removed753_eq, Removed754_eq, Removed755_eq, Removed756_eq, Removed757_eq, Removed758_eq, Removed759_eq, Removed760_eq, Removed761_eq, Removed762_eq, Removed763_eq, Removed764_eq, Removed765_eq, Removed766_eq, Removed767_eq]
  rfl
#print axioms compiled_eq
end InitECandidate.Proofs.BackendStages.RemovedChunk752_767
