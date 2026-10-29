import InitECandidate.Proofs.BackendStages.RemovedChunk112_127
import InitECandidate.Proofs.BackendStages.Named112
import InitECandidate.Proofs.BackendStages.Named113
import InitECandidate.Proofs.BackendStages.Named114
import InitECandidate.Proofs.BackendStages.Named115
import InitECandidate.Proofs.BackendStages.Named116
import InitECandidate.Proofs.BackendStages.Named117
import InitECandidate.Proofs.BackendStages.Named118
import InitECandidate.Proofs.BackendStages.Named119
import InitECandidate.Proofs.BackendStages.Named120
import InitECandidate.Proofs.BackendStages.Named121
import InitECandidate.Proofs.BackendStages.Named122
import InitECandidate.Proofs.BackendStages.Named123
import InitECandidate.Proofs.BackendStages.Named124
import InitECandidate.Proofs.BackendStages.Named125
import InitECandidate.Proofs.BackendStages.Named126
import InitECandidate.Proofs.BackendStages.Named127
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages.NamedChunk112_127
def bodies : List (Nat × StackLang.HolProg 64) := [Named112, Named113, Named114, Named115, Named116, Named117, Named118, Named119, Named120, Named121, Named122, Named123, Named124, Named125, Named126, Named127]
theorem compiled_eq : RemovedChunk112_127.bodies.map (StackNames.progCompEntryHOL RiscVConfig.riscvNames) = bodies := by
  change [StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed112, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed113, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed114, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed115, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed116, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed117, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed118, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed119, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed120, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed121, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed122, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed123, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed124, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed125, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed126, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed127] = bodies
  rw [Named112_eq, Named113_eq, Named114_eq, Named115_eq, Named116_eq, Named117_eq, Named118_eq, Named119_eq, Named120_eq, Named121_eq, Named122_eq, Named123_eq, Named124_eq, Named125_eq, Named126_eq, Named127_eq]
  rfl
#print axioms compiled_eq
end InitECandidate.Proofs.BackendStages.NamedChunk112_127
