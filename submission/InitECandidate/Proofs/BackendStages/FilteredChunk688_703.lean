import InitECandidate.Proofs.BackendStages.SectionChunk688_703
import InitECandidate.Proofs.BackendStages.Filtered688
import InitECandidate.Proofs.BackendStages.Filtered689
import InitECandidate.Proofs.BackendStages.Filtered690
import InitECandidate.Proofs.BackendStages.Filtered691
import InitECandidate.Proofs.BackendStages.Filtered692
import InitECandidate.Proofs.BackendStages.Filtered693
import InitECandidate.Proofs.BackendStages.Filtered694
import InitECandidate.Proofs.BackendStages.Filtered695
import InitECandidate.Proofs.BackendStages.Filtered696
import InitECandidate.Proofs.BackendStages.Filtered697
import InitECandidate.Proofs.BackendStages.Filtered698
import InitECandidate.Proofs.BackendStages.Filtered699
import InitECandidate.Proofs.BackendStages.Filtered700
import InitECandidate.Proofs.BackendStages.Filtered701
import InitECandidate.Proofs.BackendStages.Filtered702
import InitECandidate.Proofs.BackendStages.Filtered703
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages.FilteredChunk688_703
def sections : LabSem.LabProgHOL 64 := [Filtered688, Filtered689, Filtered690, Filtered691, Filtered692, Filtered693, Filtered694, Filtered695, Filtered696, Filtered697, Filtered698, Filtered699, Filtered700, Filtered701, Filtered702, Filtered703]
theorem compiled_eq : SectionChunk688_703.sections.map (fun sec => { sec with lines := sec.lines.filter LabFilter.notSkip }) = sections := by
  change [{ section688 with lines := section688.lines.filter LabFilter.notSkip }, { section689 with lines := section689.lines.filter LabFilter.notSkip }, { section690 with lines := section690.lines.filter LabFilter.notSkip }, { section691 with lines := section691.lines.filter LabFilter.notSkip }, { section692 with lines := section692.lines.filter LabFilter.notSkip }, { section693 with lines := section693.lines.filter LabFilter.notSkip }, { section694 with lines := section694.lines.filter LabFilter.notSkip }, { section695 with lines := section695.lines.filter LabFilter.notSkip }, { section696 with lines := section696.lines.filter LabFilter.notSkip }, { section697 with lines := section697.lines.filter LabFilter.notSkip }, { section698 with lines := section698.lines.filter LabFilter.notSkip }, { section699 with lines := section699.lines.filter LabFilter.notSkip }, { section700 with lines := section700.lines.filter LabFilter.notSkip }, { section701 with lines := section701.lines.filter LabFilter.notSkip }, { section702 with lines := section702.lines.filter LabFilter.notSkip }, { section703 with lines := section703.lines.filter LabFilter.notSkip }] = sections
  rw [Filtered688_eq, Filtered689_eq, Filtered690_eq, Filtered691_eq, Filtered692_eq, Filtered693_eq, Filtered694_eq, Filtered695_eq, Filtered696_eq, Filtered697_eq, Filtered698_eq, Filtered699_eq, Filtered700_eq, Filtered701_eq, Filtered702_eq, Filtered703_eq]
  rfl
#print axioms compiled_eq
end InitECandidate.Proofs.BackendStages.FilteredChunk688_703
