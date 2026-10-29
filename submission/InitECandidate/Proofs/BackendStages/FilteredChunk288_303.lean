import InitECandidate.Proofs.BackendStages.SectionChunk288_303
import InitECandidate.Proofs.BackendStages.Filtered288
import InitECandidate.Proofs.BackendStages.Filtered289
import InitECandidate.Proofs.BackendStages.Filtered290
import InitECandidate.Proofs.BackendStages.Filtered291
import InitECandidate.Proofs.BackendStages.Filtered292
import InitECandidate.Proofs.BackendStages.Filtered293
import InitECandidate.Proofs.BackendStages.Filtered294
import InitECandidate.Proofs.BackendStages.Filtered295
import InitECandidate.Proofs.BackendStages.Filtered296
import InitECandidate.Proofs.BackendStages.Filtered297
import InitECandidate.Proofs.BackendStages.Filtered298
import InitECandidate.Proofs.BackendStages.Filtered299
import InitECandidate.Proofs.BackendStages.Filtered300
import InitECandidate.Proofs.BackendStages.Filtered301
import InitECandidate.Proofs.BackendStages.Filtered302
import InitECandidate.Proofs.BackendStages.Filtered303
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages.FilteredChunk288_303
def sections : LabSem.LabProgHOL 64 := [Filtered288, Filtered289, Filtered290, Filtered291, Filtered292, Filtered293, Filtered294, Filtered295, Filtered296, Filtered297, Filtered298, Filtered299, Filtered300, Filtered301, Filtered302, Filtered303]
theorem compiled_eq : SectionChunk288_303.sections.map (fun sec => { sec with lines := sec.lines.filter LabFilter.notSkip }) = sections := by
  change [{ section288 with lines := section288.lines.filter LabFilter.notSkip }, { section289 with lines := section289.lines.filter LabFilter.notSkip }, { section290 with lines := section290.lines.filter LabFilter.notSkip }, { section291 with lines := section291.lines.filter LabFilter.notSkip }, { section292 with lines := section292.lines.filter LabFilter.notSkip }, { section293 with lines := section293.lines.filter LabFilter.notSkip }, { section294 with lines := section294.lines.filter LabFilter.notSkip }, { section295 with lines := section295.lines.filter LabFilter.notSkip }, { section296 with lines := section296.lines.filter LabFilter.notSkip }, { section297 with lines := section297.lines.filter LabFilter.notSkip }, { section298 with lines := section298.lines.filter LabFilter.notSkip }, { section299 with lines := section299.lines.filter LabFilter.notSkip }, { section300 with lines := section300.lines.filter LabFilter.notSkip }, { section301 with lines := section301.lines.filter LabFilter.notSkip }, { section302 with lines := section302.lines.filter LabFilter.notSkip }, { section303 with lines := section303.lines.filter LabFilter.notSkip }] = sections
  rw [Filtered288_eq, Filtered289_eq, Filtered290_eq, Filtered291_eq, Filtered292_eq, Filtered293_eq, Filtered294_eq, Filtered295_eq, Filtered296_eq, Filtered297_eq, Filtered298_eq, Filtered299_eq, Filtered300_eq, Filtered301_eq, Filtered302_eq, Filtered303_eq]
  rfl
#print axioms compiled_eq
end InitECandidate.Proofs.BackendStages.FilteredChunk288_303
