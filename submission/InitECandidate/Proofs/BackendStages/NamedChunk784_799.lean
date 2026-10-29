import InitECandidate.Proofs.BackendStages.RemovedChunk784_799
import InitECandidate.Proofs.BackendStages.Named784
import InitECandidate.Proofs.BackendStages.Named785
import InitECandidate.Proofs.BackendStages.Named786
import InitECandidate.Proofs.BackendStages.Named787
import InitECandidate.Proofs.BackendStages.Named788
import InitECandidate.Proofs.BackendStages.Named789
import InitECandidate.Proofs.BackendStages.Named790
import InitECandidate.Proofs.BackendStages.Named791
import InitECandidate.Proofs.BackendStages.Named792
import InitECandidate.Proofs.BackendStages.Named793
import InitECandidate.Proofs.BackendStages.Named794
import InitECandidate.Proofs.BackendStages.Named795
import InitECandidate.Proofs.BackendStages.Named796
import InitECandidate.Proofs.BackendStages.Named797
import InitECandidate.Proofs.BackendStages.Named798
import InitECandidate.Proofs.BackendStages.Named799
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages.NamedChunk784_799
def bodies : List (Nat × StackLang.HolProg 64) := [Named784, Named785, Named786, Named787, Named788, Named789, Named790, Named791, Named792, Named793, Named794, Named795, Named796, Named797, Named798, Named799]
theorem compiled_eq : RemovedChunk784_799.bodies.map (StackNames.progCompEntryHOL RiscVConfig.riscvNames) = bodies := by
  change [StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed784, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed785, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed786, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed787, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed788, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed789, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed790, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed791, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed792, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed793, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed794, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed795, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed796, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed797, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed798, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed799] = bodies
  rw [Named784_eq, Named785_eq, Named786_eq, Named787_eq, Named788_eq, Named789_eq, Named790_eq, Named791_eq, Named792_eq, Named793_eq, Named794_eq, Named795_eq, Named796_eq, Named797_eq, Named798_eq, Named799_eq]
  rfl
#print axioms compiled_eq
end InitECandidate.Proofs.BackendStages.NamedChunk784_799
