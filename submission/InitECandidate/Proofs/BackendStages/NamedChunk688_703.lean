import InitECandidate.Proofs.BackendStages.RemovedChunk688_703
import InitECandidate.Proofs.BackendStages.Named688
import InitECandidate.Proofs.BackendStages.Named689
import InitECandidate.Proofs.BackendStages.Named690
import InitECandidate.Proofs.BackendStages.Named691
import InitECandidate.Proofs.BackendStages.Named692
import InitECandidate.Proofs.BackendStages.Named693
import InitECandidate.Proofs.BackendStages.Named694
import InitECandidate.Proofs.BackendStages.Named695
import InitECandidate.Proofs.BackendStages.Named696
import InitECandidate.Proofs.BackendStages.Named697
import InitECandidate.Proofs.BackendStages.Named698
import InitECandidate.Proofs.BackendStages.Named699
import InitECandidate.Proofs.BackendStages.Named700
import InitECandidate.Proofs.BackendStages.Named701
import InitECandidate.Proofs.BackendStages.Named702
import InitECandidate.Proofs.BackendStages.Named703
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages.NamedChunk688_703
def bodies : List (Nat × StackLang.HolProg 64) := [Named688, Named689, Named690, Named691, Named692, Named693, Named694, Named695, Named696, Named697, Named698, Named699, Named700, Named701, Named702, Named703]
theorem compiled_eq : RemovedChunk688_703.bodies.map (StackNames.progCompEntryHOL RiscVConfig.riscvNames) = bodies := by
  change [StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed688, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed689, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed690, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed691, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed692, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed693, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed694, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed695, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed696, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed697, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed698, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed699, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed700, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed701, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed702, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed703] = bodies
  rw [Named688_eq, Named689_eq, Named690_eq, Named691_eq, Named692_eq, Named693_eq, Named694_eq, Named695_eq, Named696_eq, Named697_eq, Named698_eq, Named699_eq, Named700_eq, Named701_eq, Named702_eq, Named703_eq]
  rfl
#print axioms compiled_eq
end InitECandidate.Proofs.BackendStages.NamedChunk688_703
