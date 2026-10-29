import InitECandidate.Proofs.BackendStages.SectionChunk336_351
import InitECandidate.Proofs.BackendStages.Filtered336
import InitECandidate.Proofs.BackendStages.Filtered337
import InitECandidate.Proofs.BackendStages.Filtered338
import InitECandidate.Proofs.BackendStages.Filtered339
import InitECandidate.Proofs.BackendStages.Filtered340
import InitECandidate.Proofs.BackendStages.Filtered341
import InitECandidate.Proofs.BackendStages.Filtered342
import InitECandidate.Proofs.BackendStages.Filtered343
import InitECandidate.Proofs.BackendStages.Filtered344
import InitECandidate.Proofs.BackendStages.Filtered345
import InitECandidate.Proofs.BackendStages.Filtered346
import InitECandidate.Proofs.BackendStages.Filtered347
import InitECandidate.Proofs.BackendStages.Filtered348
import InitECandidate.Proofs.BackendStages.Filtered349
import InitECandidate.Proofs.BackendStages.Filtered350
import InitECandidate.Proofs.BackendStages.Filtered351
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages.FilteredChunk336_351
def sections : LabSem.LabProgHOL 64 := [Filtered336, Filtered337, Filtered338, Filtered339, Filtered340, Filtered341, Filtered342, Filtered343, Filtered344, Filtered345, Filtered346, Filtered347, Filtered348, Filtered349, Filtered350, Filtered351]
theorem compiled_eq : SectionChunk336_351.sections.map (fun sec => { sec with lines := sec.lines.filter LabFilter.notSkip }) = sections := by
  change [{ section336 with lines := section336.lines.filter LabFilter.notSkip }, { section337 with lines := section337.lines.filter LabFilter.notSkip }, { section338 with lines := section338.lines.filter LabFilter.notSkip }, { section339 with lines := section339.lines.filter LabFilter.notSkip }, { section340 with lines := section340.lines.filter LabFilter.notSkip }, { section341 with lines := section341.lines.filter LabFilter.notSkip }, { section342 with lines := section342.lines.filter LabFilter.notSkip }, { section343 with lines := section343.lines.filter LabFilter.notSkip }, { section344 with lines := section344.lines.filter LabFilter.notSkip }, { section345 with lines := section345.lines.filter LabFilter.notSkip }, { section346 with lines := section346.lines.filter LabFilter.notSkip }, { section347 with lines := section347.lines.filter LabFilter.notSkip }, { section348 with lines := section348.lines.filter LabFilter.notSkip }, { section349 with lines := section349.lines.filter LabFilter.notSkip }, { section350 with lines := section350.lines.filter LabFilter.notSkip }, { section351 with lines := section351.lines.filter LabFilter.notSkip }] = sections
  rw [Filtered336_eq, Filtered337_eq, Filtered338_eq, Filtered339_eq, Filtered340_eq, Filtered341_eq, Filtered342_eq, Filtered343_eq, Filtered344_eq, Filtered345_eq, Filtered346_eq, Filtered347_eq, Filtered348_eq, Filtered349_eq, Filtered350_eq, Filtered351_eq]
  rfl
#print axioms compiled_eq
end InitECandidate.Proofs.BackendStages.FilteredChunk336_351
