import InitECandidate.Proofs.BackendStages.SectionChunk736_751
import InitECandidate.Proofs.BackendStages.Filtered736
import InitECandidate.Proofs.BackendStages.Filtered737
import InitECandidate.Proofs.BackendStages.Filtered738
import InitECandidate.Proofs.BackendStages.Filtered739
import InitECandidate.Proofs.BackendStages.Filtered740
import InitECandidate.Proofs.BackendStages.Filtered741
import InitECandidate.Proofs.BackendStages.Filtered742
import InitECandidate.Proofs.BackendStages.Filtered743
import InitECandidate.Proofs.BackendStages.Filtered744
import InitECandidate.Proofs.BackendStages.Filtered745
import InitECandidate.Proofs.BackendStages.Filtered746
import InitECandidate.Proofs.BackendStages.Filtered747
import InitECandidate.Proofs.BackendStages.Filtered748
import InitECandidate.Proofs.BackendStages.Filtered749
import InitECandidate.Proofs.BackendStages.Filtered750
import InitECandidate.Proofs.BackendStages.Filtered751
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages.FilteredChunk736_751
def sections : LabSem.LabProgHOL 64 := [Filtered736, Filtered737, Filtered738, Filtered739, Filtered740, Filtered741, Filtered742, Filtered743, Filtered744, Filtered745, Filtered746, Filtered747, Filtered748, Filtered749, Filtered750, Filtered751]
theorem compiled_eq : SectionChunk736_751.sections.map (fun sec => { sec with lines := sec.lines.filter LabFilter.notSkip }) = sections := by
  change [{ section736 with lines := section736.lines.filter LabFilter.notSkip }, { section737 with lines := section737.lines.filter LabFilter.notSkip }, { section738 with lines := section738.lines.filter LabFilter.notSkip }, { section739 with lines := section739.lines.filter LabFilter.notSkip }, { section740 with lines := section740.lines.filter LabFilter.notSkip }, { section741 with lines := section741.lines.filter LabFilter.notSkip }, { section742 with lines := section742.lines.filter LabFilter.notSkip }, { section743 with lines := section743.lines.filter LabFilter.notSkip }, { section744 with lines := section744.lines.filter LabFilter.notSkip }, { section745 with lines := section745.lines.filter LabFilter.notSkip }, { section746 with lines := section746.lines.filter LabFilter.notSkip }, { section747 with lines := section747.lines.filter LabFilter.notSkip }, { section748 with lines := section748.lines.filter LabFilter.notSkip }, { section749 with lines := section749.lines.filter LabFilter.notSkip }, { section750 with lines := section750.lines.filter LabFilter.notSkip }, { section751 with lines := section751.lines.filter LabFilter.notSkip }] = sections
  rw [Filtered736_eq, Filtered737_eq, Filtered738_eq, Filtered739_eq, Filtered740_eq, Filtered741_eq, Filtered742_eq, Filtered743_eq, Filtered744_eq, Filtered745_eq, Filtered746_eq, Filtered747_eq, Filtered748_eq, Filtered749_eq, Filtered750_eq, Filtered751_eq]
  rfl
#print axioms compiled_eq
end InitECandidate.Proofs.BackendStages.FilteredChunk736_751
