import InitECandidate.Proofs.BackendStages.RemovedChunk752_767
import InitECandidate.Proofs.BackendStages.Named752
import InitECandidate.Proofs.BackendStages.Named753
import InitECandidate.Proofs.BackendStages.Named754
import InitECandidate.Proofs.BackendStages.Named755
import InitECandidate.Proofs.BackendStages.Named756
import InitECandidate.Proofs.BackendStages.Named757
import InitECandidate.Proofs.BackendStages.Named758
import InitECandidate.Proofs.BackendStages.Named759
import InitECandidate.Proofs.BackendStages.Named760
import InitECandidate.Proofs.BackendStages.Named761
import InitECandidate.Proofs.BackendStages.Named762
import InitECandidate.Proofs.BackendStages.Named763
import InitECandidate.Proofs.BackendStages.Named764
import InitECandidate.Proofs.BackendStages.Named765
import InitECandidate.Proofs.BackendStages.Named766
import InitECandidate.Proofs.BackendStages.Named767
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages.NamedChunk752_767
def bodies : List (Nat × StackLang.HolProg 64) := [Named752, Named753, Named754, Named755, Named756, Named757, Named758, Named759, Named760, Named761, Named762, Named763, Named764, Named765, Named766, Named767]
theorem compiled_eq : RemovedChunk752_767.bodies.map (StackNames.progCompEntryHOL RiscVConfig.riscvNames) = bodies := by
  change [StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed752, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed753, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed754, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed755, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed756, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed757, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed758, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed759, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed760, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed761, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed762, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed763, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed764, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed765, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed766, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed767] = bodies
  rw [Named752_eq, Named753_eq, Named754_eq, Named755_eq, Named756_eq, Named757_eq, Named758_eq, Named759_eq, Named760_eq, Named761_eq, Named762_eq, Named763_eq, Named764_eq, Named765_eq, Named766_eq, Named767_eq]
  rfl
#print axioms compiled_eq
end InitECandidate.Proofs.BackendStages.NamedChunk752_767
