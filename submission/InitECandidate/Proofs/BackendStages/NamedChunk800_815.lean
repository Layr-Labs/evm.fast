import InitECandidate.Proofs.BackendStages.RemovedChunk800_815
import InitECandidate.Proofs.BackendStages.Named800
import InitECandidate.Proofs.BackendStages.Named801
import InitECandidate.Proofs.BackendStages.Named802
import InitECandidate.Proofs.BackendStages.Named803
import InitECandidate.Proofs.BackendStages.Named804
import InitECandidate.Proofs.BackendStages.Named805
import InitECandidate.Proofs.BackendStages.Named806
import InitECandidate.Proofs.BackendStages.Named807
import InitECandidate.Proofs.BackendStages.Named808
import InitECandidate.Proofs.BackendStages.Named809
import InitECandidate.Proofs.BackendStages.Named810
import InitECandidate.Proofs.BackendStages.Named811
import InitECandidate.Proofs.BackendStages.Named812
import InitECandidate.Proofs.BackendStages.Named813
import InitECandidate.Proofs.BackendStages.Named814
import InitECandidate.Proofs.BackendStages.Named815
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages.NamedChunk800_815
def bodies : List (Nat × StackLang.HolProg 64) := [Named800, Named801, Named802, Named803, Named804, Named805, Named806, Named807, Named808, Named809, Named810, Named811, Named812, Named813, Named814, Named815]
theorem compiled_eq : RemovedChunk800_815.bodies.map (StackNames.progCompEntryHOL RiscVConfig.riscvNames) = bodies := by
  change [StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed800, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed801, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed802, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed803, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed804, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed805, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed806, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed807, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed808, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed809, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed810, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed811, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed812, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed813, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed814, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed815] = bodies
  rw [Named800_eq, Named801_eq, Named802_eq, Named803_eq, Named804_eq, Named805_eq, Named806_eq, Named807_eq, Named808_eq, Named809_eq, Named810_eq, Named811_eq, Named812_eq, Named813_eq, Named814_eq, Named815_eq]
  rfl
#print axioms compiled_eq
end InitECandidate.Proofs.BackendStages.NamedChunk800_815
