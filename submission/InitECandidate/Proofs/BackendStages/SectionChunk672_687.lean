import InitECandidate.Proofs.BackendStages.NamedChunk672_687
import InitECandidate.Proofs.BackendStages.Section672
import InitECandidate.Proofs.BackendStages.Section673
import InitECandidate.Proofs.BackendStages.Section674
import InitECandidate.Proofs.BackendStages.Section675
import InitECandidate.Proofs.BackendStages.Section676
import InitECandidate.Proofs.BackendStages.Section677
import InitECandidate.Proofs.BackendStages.Section678
import InitECandidate.Proofs.BackendStages.Section679
import InitECandidate.Proofs.BackendStages.Section680
import InitECandidate.Proofs.BackendStages.Section681
import InitECandidate.Proofs.BackendStages.Section682
import InitECandidate.Proofs.BackendStages.Section683
import InitECandidate.Proofs.BackendStages.Section684
import InitECandidate.Proofs.BackendStages.Section685
import InitECandidate.Proofs.BackendStages.Section686
import InitECandidate.Proofs.BackendStages.Section687
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages.SectionChunk672_687
def sections : LabSem.LabProgHOL 64 := [section672, section673, section674, section675, section676, section677, section678, section679, section680, section681, section682, section683, section684, section685, section686, section687]
theorem compiled_eq : NamedChunk672_687.bodies.map StackToLab.progToSectionHOL = sections := by
  change [StackToLab.progToSectionHOL Named672, StackToLab.progToSectionHOL Named673, StackToLab.progToSectionHOL Named674, StackToLab.progToSectionHOL Named675, StackToLab.progToSectionHOL Named676, StackToLab.progToSectionHOL Named677, StackToLab.progToSectionHOL Named678, StackToLab.progToSectionHOL Named679, StackToLab.progToSectionHOL Named680, StackToLab.progToSectionHOL Named681, StackToLab.progToSectionHOL Named682, StackToLab.progToSectionHOL Named683, StackToLab.progToSectionHOL Named684, StackToLab.progToSectionHOL Named685, StackToLab.progToSectionHOL Named686, StackToLab.progToSectionHOL Named687] = sections
  rw [section672_eq, section673_eq, section674_eq, section675_eq, section676_eq, section677_eq, section678_eq, section679_eq, section680_eq, section681_eq, section682_eq, section683_eq, section684_eq, section685_eq, section686_eq, section687_eq]
  rfl
#print axioms compiled_eq
end InitECandidate.Proofs.BackendStages.SectionChunk672_687
