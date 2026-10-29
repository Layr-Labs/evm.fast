import InitECandidate.Proofs.BackendStages.SectionChunk368_383
import InitECandidate.Proofs.BackendStages.Filtered368
import InitECandidate.Proofs.BackendStages.Filtered369
import InitECandidate.Proofs.BackendStages.Filtered370
import InitECandidate.Proofs.BackendStages.Filtered371
import InitECandidate.Proofs.BackendStages.Filtered372
import InitECandidate.Proofs.BackendStages.Filtered373
import InitECandidate.Proofs.BackendStages.Filtered374
import InitECandidate.Proofs.BackendStages.Filtered375
import InitECandidate.Proofs.BackendStages.Filtered376
import InitECandidate.Proofs.BackendStages.Filtered377
import InitECandidate.Proofs.BackendStages.Filtered378
import InitECandidate.Proofs.BackendStages.Filtered379
import InitECandidate.Proofs.BackendStages.Filtered380
import InitECandidate.Proofs.BackendStages.Filtered381
import InitECandidate.Proofs.BackendStages.Filtered382
import InitECandidate.Proofs.BackendStages.Filtered383
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages.FilteredChunk368_383
def sections : LabSem.LabProgHOL 64 := [Filtered368, Filtered369, Filtered370, Filtered371, Filtered372, Filtered373, Filtered374, Filtered375, Filtered376, Filtered377, Filtered378, Filtered379, Filtered380, Filtered381, Filtered382, Filtered383]
theorem compiled_eq : SectionChunk368_383.sections.map (fun sec => { sec with lines := sec.lines.filter LabFilter.notSkip }) = sections := by
  change [{ section368 with lines := section368.lines.filter LabFilter.notSkip }, { section369 with lines := section369.lines.filter LabFilter.notSkip }, { section370 with lines := section370.lines.filter LabFilter.notSkip }, { section371 with lines := section371.lines.filter LabFilter.notSkip }, { section372 with lines := section372.lines.filter LabFilter.notSkip }, { section373 with lines := section373.lines.filter LabFilter.notSkip }, { section374 with lines := section374.lines.filter LabFilter.notSkip }, { section375 with lines := section375.lines.filter LabFilter.notSkip }, { section376 with lines := section376.lines.filter LabFilter.notSkip }, { section377 with lines := section377.lines.filter LabFilter.notSkip }, { section378 with lines := section378.lines.filter LabFilter.notSkip }, { section379 with lines := section379.lines.filter LabFilter.notSkip }, { section380 with lines := section380.lines.filter LabFilter.notSkip }, { section381 with lines := section381.lines.filter LabFilter.notSkip }, { section382 with lines := section382.lines.filter LabFilter.notSkip }, { section383 with lines := section383.lines.filter LabFilter.notSkip }] = sections
  rw [Filtered368_eq, Filtered369_eq, Filtered370_eq, Filtered371_eq, Filtered372_eq, Filtered373_eq, Filtered374_eq, Filtered375_eq, Filtered376_eq, Filtered377_eq, Filtered378_eq, Filtered379_eq, Filtered380_eq, Filtered381_eq, Filtered382_eq, Filtered383_eq]
  rfl
#print axioms compiled_eq
end InitECandidate.Proofs.BackendStages.FilteredChunk368_383
