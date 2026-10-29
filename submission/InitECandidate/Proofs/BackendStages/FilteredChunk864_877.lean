import InitECandidate.Proofs.BackendStages.SectionChunk864_877
import InitECandidate.Proofs.BackendStages.Filtered864
import InitECandidate.Proofs.BackendStages.Filtered865
import InitECandidate.Proofs.BackendStages.Filtered866
import InitECandidate.Proofs.BackendStages.Filtered867
import InitECandidate.Proofs.BackendStages.Filtered868
import InitECandidate.Proofs.BackendStages.Filtered869
import InitECandidate.Proofs.BackendStages.Filtered870
import InitECandidate.Proofs.BackendStages.Filtered871
import InitECandidate.Proofs.BackendStages.Filtered872
import InitECandidate.Proofs.BackendStages.Filtered873
import InitECandidate.Proofs.BackendStages.Filtered874
import InitECandidate.Proofs.BackendStages.Filtered875
import InitECandidate.Proofs.BackendStages.Filtered876
import InitECandidate.Proofs.BackendStages.Filtered877
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages.FilteredChunk864_877
def sections : LabSem.LabProgHOL 64 := [Filtered864, Filtered865, Filtered866, Filtered867, Filtered868, Filtered869, Filtered870, Filtered871, Filtered872, Filtered873, Filtered874, Filtered875, Filtered876, Filtered877]
theorem compiled_eq : SectionChunk864_877.sections.map (fun sec => { sec with lines := sec.lines.filter LabFilter.notSkip }) = sections := by
  change [{ section864 with lines := section864.lines.filter LabFilter.notSkip }, { section865 with lines := section865.lines.filter LabFilter.notSkip }, { section866 with lines := section866.lines.filter LabFilter.notSkip }, { section867 with lines := section867.lines.filter LabFilter.notSkip }, { section868 with lines := section868.lines.filter LabFilter.notSkip }, { section869 with lines := section869.lines.filter LabFilter.notSkip }, { section870 with lines := section870.lines.filter LabFilter.notSkip }, { section871 with lines := section871.lines.filter LabFilter.notSkip }, { section872 with lines := section872.lines.filter LabFilter.notSkip }, { section873 with lines := section873.lines.filter LabFilter.notSkip }, { section874 with lines := section874.lines.filter LabFilter.notSkip }, { section875 with lines := section875.lines.filter LabFilter.notSkip }, { section876 with lines := section876.lines.filter LabFilter.notSkip }, { section877 with lines := section877.lines.filter LabFilter.notSkip }] = sections
  rw [Filtered864_eq, Filtered865_eq, Filtered866_eq, Filtered867_eq, Filtered868_eq, Filtered869_eq, Filtered870_eq, Filtered871_eq, Filtered872_eq, Filtered873_eq, Filtered874_eq, Filtered875_eq, Filtered876_eq, Filtered877_eq]
  rfl
#print axioms compiled_eq
end InitECandidate.Proofs.BackendStages.FilteredChunk864_877
