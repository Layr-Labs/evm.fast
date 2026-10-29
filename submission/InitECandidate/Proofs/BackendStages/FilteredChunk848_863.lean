import InitECandidate.Proofs.BackendStages.SectionChunk848_863
import InitECandidate.Proofs.BackendStages.Filtered848
import InitECandidate.Proofs.BackendStages.Filtered849
import InitECandidate.Proofs.BackendStages.Filtered850
import InitECandidate.Proofs.BackendStages.Filtered851
import InitECandidate.Proofs.BackendStages.Filtered852
import InitECandidate.Proofs.BackendStages.Filtered853
import InitECandidate.Proofs.BackendStages.Filtered854
import InitECandidate.Proofs.BackendStages.Filtered855
import InitECandidate.Proofs.BackendStages.Filtered856
import InitECandidate.Proofs.BackendStages.Filtered857
import InitECandidate.Proofs.BackendStages.Filtered858
import InitECandidate.Proofs.BackendStages.Filtered859
import InitECandidate.Proofs.BackendStages.Filtered860
import InitECandidate.Proofs.BackendStages.Filtered861
import InitECandidate.Proofs.BackendStages.Filtered862
import InitECandidate.Proofs.BackendStages.Filtered863
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages.FilteredChunk848_863
def sections : LabSem.LabProgHOL 64 := [Filtered848, Filtered849, Filtered850, Filtered851, Filtered852, Filtered853, Filtered854, Filtered855, Filtered856, Filtered857, Filtered858, Filtered859, Filtered860, Filtered861, Filtered862, Filtered863]
theorem compiled_eq : SectionChunk848_863.sections.map (fun sec => { sec with lines := sec.lines.filter LabFilter.notSkip }) = sections := by
  change [{ section848 with lines := section848.lines.filter LabFilter.notSkip }, { section849 with lines := section849.lines.filter LabFilter.notSkip }, { section850 with lines := section850.lines.filter LabFilter.notSkip }, { section851 with lines := section851.lines.filter LabFilter.notSkip }, { section852 with lines := section852.lines.filter LabFilter.notSkip }, { section853 with lines := section853.lines.filter LabFilter.notSkip }, { section854 with lines := section854.lines.filter LabFilter.notSkip }, { section855 with lines := section855.lines.filter LabFilter.notSkip }, { section856 with lines := section856.lines.filter LabFilter.notSkip }, { section857 with lines := section857.lines.filter LabFilter.notSkip }, { section858 with lines := section858.lines.filter LabFilter.notSkip }, { section859 with lines := section859.lines.filter LabFilter.notSkip }, { section860 with lines := section860.lines.filter LabFilter.notSkip }, { section861 with lines := section861.lines.filter LabFilter.notSkip }, { section862 with lines := section862.lines.filter LabFilter.notSkip }, { section863 with lines := section863.lines.filter LabFilter.notSkip }] = sections
  rw [Filtered848_eq, Filtered849_eq, Filtered850_eq, Filtered851_eq, Filtered852_eq, Filtered853_eq, Filtered854_eq, Filtered855_eq, Filtered856_eq, Filtered857_eq, Filtered858_eq, Filtered859_eq, Filtered860_eq, Filtered861_eq, Filtered862_eq, Filtered863_eq]
  rfl
#print axioms compiled_eq
end InitECandidate.Proofs.BackendStages.FilteredChunk848_863
