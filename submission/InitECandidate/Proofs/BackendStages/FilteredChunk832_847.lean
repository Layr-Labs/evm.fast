import InitECandidate.Proofs.BackendStages.SectionChunk832_847
import InitECandidate.Proofs.BackendStages.Filtered832
import InitECandidate.Proofs.BackendStages.Filtered833
import InitECandidate.Proofs.BackendStages.Filtered834
import InitECandidate.Proofs.BackendStages.Filtered835
import InitECandidate.Proofs.BackendStages.Filtered836
import InitECandidate.Proofs.BackendStages.Filtered837
import InitECandidate.Proofs.BackendStages.Filtered838
import InitECandidate.Proofs.BackendStages.Filtered839
import InitECandidate.Proofs.BackendStages.Filtered840
import InitECandidate.Proofs.BackendStages.Filtered841
import InitECandidate.Proofs.BackendStages.Filtered842
import InitECandidate.Proofs.BackendStages.Filtered843
import InitECandidate.Proofs.BackendStages.Filtered844
import InitECandidate.Proofs.BackendStages.Filtered845
import InitECandidate.Proofs.BackendStages.Filtered846
import InitECandidate.Proofs.BackendStages.Filtered847
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages.FilteredChunk832_847
def sections : LabSem.LabProgHOL 64 := [Filtered832, Filtered833, Filtered834, Filtered835, Filtered836, Filtered837, Filtered838, Filtered839, Filtered840, Filtered841, Filtered842, Filtered843, Filtered844, Filtered845, Filtered846, Filtered847]
theorem compiled_eq : SectionChunk832_847.sections.map (fun sec => { sec with lines := sec.lines.filter LabFilter.notSkip }) = sections := by
  change [{ section832 with lines := section832.lines.filter LabFilter.notSkip }, { section833 with lines := section833.lines.filter LabFilter.notSkip }, { section834 with lines := section834.lines.filter LabFilter.notSkip }, { section835 with lines := section835.lines.filter LabFilter.notSkip }, { section836 with lines := section836.lines.filter LabFilter.notSkip }, { section837 with lines := section837.lines.filter LabFilter.notSkip }, { section838 with lines := section838.lines.filter LabFilter.notSkip }, { section839 with lines := section839.lines.filter LabFilter.notSkip }, { section840 with lines := section840.lines.filter LabFilter.notSkip }, { section841 with lines := section841.lines.filter LabFilter.notSkip }, { section842 with lines := section842.lines.filter LabFilter.notSkip }, { section843 with lines := section843.lines.filter LabFilter.notSkip }, { section844 with lines := section844.lines.filter LabFilter.notSkip }, { section845 with lines := section845.lines.filter LabFilter.notSkip }, { section846 with lines := section846.lines.filter LabFilter.notSkip }, { section847 with lines := section847.lines.filter LabFilter.notSkip }] = sections
  rw [Filtered832_eq, Filtered833_eq, Filtered834_eq, Filtered835_eq, Filtered836_eq, Filtered837_eq, Filtered838_eq, Filtered839_eq, Filtered840_eq, Filtered841_eq, Filtered842_eq, Filtered843_eq, Filtered844_eq, Filtered845_eq, Filtered846_eq, Filtered847_eq]
  rfl
#print axioms compiled_eq
end InitECandidate.Proofs.BackendStages.FilteredChunk832_847
