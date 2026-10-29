import InitECandidate.Proofs.BackendStages.SectionChunk816_831
import InitECandidate.Proofs.BackendStages.Filtered816
import InitECandidate.Proofs.BackendStages.Filtered817
import InitECandidate.Proofs.BackendStages.Filtered818
import InitECandidate.Proofs.BackendStages.Filtered819
import InitECandidate.Proofs.BackendStages.Filtered820
import InitECandidate.Proofs.BackendStages.Filtered821
import InitECandidate.Proofs.BackendStages.Filtered822
import InitECandidate.Proofs.BackendStages.Filtered823
import InitECandidate.Proofs.BackendStages.Filtered824
import InitECandidate.Proofs.BackendStages.Filtered825
import InitECandidate.Proofs.BackendStages.Filtered826
import InitECandidate.Proofs.BackendStages.Filtered827
import InitECandidate.Proofs.BackendStages.Filtered828
import InitECandidate.Proofs.BackendStages.Filtered829
import InitECandidate.Proofs.BackendStages.Filtered830
import InitECandidate.Proofs.BackendStages.Filtered831
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages.FilteredChunk816_831
def sections : LabSem.LabProgHOL 64 := [Filtered816, Filtered817, Filtered818, Filtered819, Filtered820, Filtered821, Filtered822, Filtered823, Filtered824, Filtered825, Filtered826, Filtered827, Filtered828, Filtered829, Filtered830, Filtered831]
theorem compiled_eq : SectionChunk816_831.sections.map (fun sec => { sec with lines := sec.lines.filter LabFilter.notSkip }) = sections := by
  change [{ section816 with lines := section816.lines.filter LabFilter.notSkip }, { section817 with lines := section817.lines.filter LabFilter.notSkip }, { section818 with lines := section818.lines.filter LabFilter.notSkip }, { section819 with lines := section819.lines.filter LabFilter.notSkip }, { section820 with lines := section820.lines.filter LabFilter.notSkip }, { section821 with lines := section821.lines.filter LabFilter.notSkip }, { section822 with lines := section822.lines.filter LabFilter.notSkip }, { section823 with lines := section823.lines.filter LabFilter.notSkip }, { section824 with lines := section824.lines.filter LabFilter.notSkip }, { section825 with lines := section825.lines.filter LabFilter.notSkip }, { section826 with lines := section826.lines.filter LabFilter.notSkip }, { section827 with lines := section827.lines.filter LabFilter.notSkip }, { section828 with lines := section828.lines.filter LabFilter.notSkip }, { section829 with lines := section829.lines.filter LabFilter.notSkip }, { section830 with lines := section830.lines.filter LabFilter.notSkip }, { section831 with lines := section831.lines.filter LabFilter.notSkip }] = sections
  rw [Filtered816_eq, Filtered817_eq, Filtered818_eq, Filtered819_eq, Filtered820_eq, Filtered821_eq, Filtered822_eq, Filtered823_eq, Filtered824_eq, Filtered825_eq, Filtered826_eq, Filtered827_eq, Filtered828_eq, Filtered829_eq, Filtered830_eq, Filtered831_eq]
  rfl
#print axioms compiled_eq
end InitECandidate.Proofs.BackendStages.FilteredChunk816_831
