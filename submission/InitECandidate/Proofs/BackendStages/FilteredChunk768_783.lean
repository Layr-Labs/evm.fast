import InitECandidate.Proofs.BackendStages.SectionChunk768_783
import InitECandidate.Proofs.BackendStages.Filtered768
import InitECandidate.Proofs.BackendStages.Filtered769
import InitECandidate.Proofs.BackendStages.Filtered770
import InitECandidate.Proofs.BackendStages.Filtered771
import InitECandidate.Proofs.BackendStages.Filtered772
import InitECandidate.Proofs.BackendStages.Filtered773
import InitECandidate.Proofs.BackendStages.Filtered774
import InitECandidate.Proofs.BackendStages.Filtered775
import InitECandidate.Proofs.BackendStages.Filtered776
import InitECandidate.Proofs.BackendStages.Filtered777
import InitECandidate.Proofs.BackendStages.Filtered778
import InitECandidate.Proofs.BackendStages.Filtered779
import InitECandidate.Proofs.BackendStages.Filtered780
import InitECandidate.Proofs.BackendStages.Filtered781
import InitECandidate.Proofs.BackendStages.Filtered782
import InitECandidate.Proofs.BackendStages.Filtered783
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages.FilteredChunk768_783
def sections : LabSem.LabProgHOL 64 := [Filtered768, Filtered769, Filtered770, Filtered771, Filtered772, Filtered773, Filtered774, Filtered775, Filtered776, Filtered777, Filtered778, Filtered779, Filtered780, Filtered781, Filtered782, Filtered783]
theorem compiled_eq : SectionChunk768_783.sections.map (fun sec => { sec with lines := sec.lines.filter LabFilter.notSkip }) = sections := by
  change [{ section768 with lines := section768.lines.filter LabFilter.notSkip }, { section769 with lines := section769.lines.filter LabFilter.notSkip }, { section770 with lines := section770.lines.filter LabFilter.notSkip }, { section771 with lines := section771.lines.filter LabFilter.notSkip }, { section772 with lines := section772.lines.filter LabFilter.notSkip }, { section773 with lines := section773.lines.filter LabFilter.notSkip }, { section774 with lines := section774.lines.filter LabFilter.notSkip }, { section775 with lines := section775.lines.filter LabFilter.notSkip }, { section776 with lines := section776.lines.filter LabFilter.notSkip }, { section777 with lines := section777.lines.filter LabFilter.notSkip }, { section778 with lines := section778.lines.filter LabFilter.notSkip }, { section779 with lines := section779.lines.filter LabFilter.notSkip }, { section780 with lines := section780.lines.filter LabFilter.notSkip }, { section781 with lines := section781.lines.filter LabFilter.notSkip }, { section782 with lines := section782.lines.filter LabFilter.notSkip }, { section783 with lines := section783.lines.filter LabFilter.notSkip }] = sections
  rw [Filtered768_eq, Filtered769_eq, Filtered770_eq, Filtered771_eq, Filtered772_eq, Filtered773_eq, Filtered774_eq, Filtered775_eq, Filtered776_eq, Filtered777_eq, Filtered778_eq, Filtered779_eq, Filtered780_eq, Filtered781_eq, Filtered782_eq, Filtered783_eq]
  rfl
#print axioms compiled_eq
end InitECandidate.Proofs.BackendStages.FilteredChunk768_783
