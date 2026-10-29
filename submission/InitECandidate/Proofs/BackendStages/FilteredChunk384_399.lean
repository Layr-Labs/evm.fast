import InitECandidate.Proofs.BackendStages.SectionChunk384_399
import InitECandidate.Proofs.BackendStages.Filtered384
import InitECandidate.Proofs.BackendStages.Filtered385
import InitECandidate.Proofs.BackendStages.Filtered386
import InitECandidate.Proofs.BackendStages.Filtered387
import InitECandidate.Proofs.BackendStages.Filtered388
import InitECandidate.Proofs.BackendStages.Filtered389
import InitECandidate.Proofs.BackendStages.Filtered390
import InitECandidate.Proofs.BackendStages.Filtered391
import InitECandidate.Proofs.BackendStages.Filtered392
import InitECandidate.Proofs.BackendStages.Filtered393
import InitECandidate.Proofs.BackendStages.Filtered394
import InitECandidate.Proofs.BackendStages.Filtered395
import InitECandidate.Proofs.BackendStages.Filtered396
import InitECandidate.Proofs.BackendStages.Filtered397
import InitECandidate.Proofs.BackendStages.Filtered398
import InitECandidate.Proofs.BackendStages.Filtered399
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages.FilteredChunk384_399
def sections : LabSem.LabProgHOL 64 := [Filtered384, Filtered385, Filtered386, Filtered387, Filtered388, Filtered389, Filtered390, Filtered391, Filtered392, Filtered393, Filtered394, Filtered395, Filtered396, Filtered397, Filtered398, Filtered399]
theorem compiled_eq : SectionChunk384_399.sections.map (fun sec => { sec with lines := sec.lines.filter LabFilter.notSkip }) = sections := by
  change [{ section384 with lines := section384.lines.filter LabFilter.notSkip }, { section385 with lines := section385.lines.filter LabFilter.notSkip }, { section386 with lines := section386.lines.filter LabFilter.notSkip }, { section387 with lines := section387.lines.filter LabFilter.notSkip }, { section388 with lines := section388.lines.filter LabFilter.notSkip }, { section389 with lines := section389.lines.filter LabFilter.notSkip }, { section390 with lines := section390.lines.filter LabFilter.notSkip }, { section391 with lines := section391.lines.filter LabFilter.notSkip }, { section392 with lines := section392.lines.filter LabFilter.notSkip }, { section393 with lines := section393.lines.filter LabFilter.notSkip }, { section394 with lines := section394.lines.filter LabFilter.notSkip }, { section395 with lines := section395.lines.filter LabFilter.notSkip }, { section396 with lines := section396.lines.filter LabFilter.notSkip }, { section397 with lines := section397.lines.filter LabFilter.notSkip }, { section398 with lines := section398.lines.filter LabFilter.notSkip }, { section399 with lines := section399.lines.filter LabFilter.notSkip }] = sections
  rw [Filtered384_eq, Filtered385_eq, Filtered386_eq, Filtered387_eq, Filtered388_eq, Filtered389_eq, Filtered390_eq, Filtered391_eq, Filtered392_eq, Filtered393_eq, Filtered394_eq, Filtered395_eq, Filtered396_eq, Filtered397_eq, Filtered398_eq, Filtered399_eq]
  rfl
#print axioms compiled_eq
end InitECandidate.Proofs.BackendStages.FilteredChunk384_399
