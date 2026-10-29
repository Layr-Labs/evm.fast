import InitECandidate.Proofs.BackendStages.RemovedChunk672_687
import InitECandidate.Proofs.BackendStages.Named672
import InitECandidate.Proofs.BackendStages.Named673
import InitECandidate.Proofs.BackendStages.Named674
import InitECandidate.Proofs.BackendStages.Named675
import InitECandidate.Proofs.BackendStages.Named676
import InitECandidate.Proofs.BackendStages.Named677
import InitECandidate.Proofs.BackendStages.Named678
import InitECandidate.Proofs.BackendStages.Named679
import InitECandidate.Proofs.BackendStages.Named680
import InitECandidate.Proofs.BackendStages.Named681
import InitECandidate.Proofs.BackendStages.Named682
import InitECandidate.Proofs.BackendStages.Named683
import InitECandidate.Proofs.BackendStages.Named684
import InitECandidate.Proofs.BackendStages.Named685
import InitECandidate.Proofs.BackendStages.Named686
import InitECandidate.Proofs.BackendStages.Named687
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages.NamedChunk672_687
def bodies : List (Nat × StackLang.HolProg 64) := [Named672, Named673, Named674, Named675, Named676, Named677, Named678, Named679, Named680, Named681, Named682, Named683, Named684, Named685, Named686, Named687]
theorem compiled_eq : RemovedChunk672_687.bodies.map (StackNames.progCompEntryHOL RiscVConfig.riscvNames) = bodies := by
  change [StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed672, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed673, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed674, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed675, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed676, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed677, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed678, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed679, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed680, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed681, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed682, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed683, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed684, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed685, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed686, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed687] = bodies
  rw [Named672_eq, Named673_eq, Named674_eq, Named675_eq, Named676_eq, Named677_eq, Named678_eq, Named679_eq, Named680_eq, Named681_eq, Named682_eq, Named683_eq, Named684_eq, Named685_eq, Named686_eq, Named687_eq]
  rfl
#print axioms compiled_eq
end InitECandidate.Proofs.BackendStages.NamedChunk672_687
