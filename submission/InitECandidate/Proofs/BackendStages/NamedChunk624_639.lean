import InitECandidate.Proofs.BackendStages.RemovedChunk624_639
import InitECandidate.Proofs.BackendStages.Named624
import InitECandidate.Proofs.BackendStages.Named625
import InitECandidate.Proofs.BackendStages.Named626
import InitECandidate.Proofs.BackendStages.Named627
import InitECandidate.Proofs.BackendStages.Named628
import InitECandidate.Proofs.BackendStages.Named629
import InitECandidate.Proofs.BackendStages.Named630
import InitECandidate.Proofs.BackendStages.Named631
import InitECandidate.Proofs.BackendStages.Named632
import InitECandidate.Proofs.BackendStages.Named633
import InitECandidate.Proofs.BackendStages.Named634
import InitECandidate.Proofs.BackendStages.Named635
import InitECandidate.Proofs.BackendStages.Named636
import InitECandidate.Proofs.BackendStages.Named637
import InitECandidate.Proofs.BackendStages.Named638
import InitECandidate.Proofs.BackendStages.Named639
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages.NamedChunk624_639
def bodies : List (Nat × StackLang.HolProg 64) := [Named624, Named625, Named626, Named627, Named628, Named629, Named630, Named631, Named632, Named633, Named634, Named635, Named636, Named637, Named638, Named639]
theorem compiled_eq : RemovedChunk624_639.bodies.map (StackNames.progCompEntryHOL RiscVConfig.riscvNames) = bodies := by
  change [StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed624, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed625, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed626, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed627, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed628, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed629, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed630, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed631, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed632, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed633, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed634, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed635, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed636, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed637, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed638, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed639] = bodies
  rw [Named624_eq, Named625_eq, Named626_eq, Named627_eq, Named628_eq, Named629_eq, Named630_eq, Named631_eq, Named632_eq, Named633_eq, Named634_eq, Named635_eq, Named636_eq, Named637_eq, Named638_eq, Named639_eq]
  rfl
#print axioms compiled_eq
end InitECandidate.Proofs.BackendStages.NamedChunk624_639
