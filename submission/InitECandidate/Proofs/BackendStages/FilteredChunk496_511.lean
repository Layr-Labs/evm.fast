import InitECandidate.Proofs.BackendStages.SectionChunk496_511
import InitECandidate.Proofs.BackendStages.Filtered496
import InitECandidate.Proofs.BackendStages.Filtered497
import InitECandidate.Proofs.BackendStages.Filtered498
import InitECandidate.Proofs.BackendStages.Filtered499
import InitECandidate.Proofs.BackendStages.Filtered500
import InitECandidate.Proofs.BackendStages.Filtered501
import InitECandidate.Proofs.BackendStages.Filtered502
import InitECandidate.Proofs.BackendStages.Filtered503
import InitECandidate.Proofs.BackendStages.Filtered504
import InitECandidate.Proofs.BackendStages.Filtered505
import InitECandidate.Proofs.BackendStages.Filtered506
import InitECandidate.Proofs.BackendStages.Filtered507
import InitECandidate.Proofs.BackendStages.Filtered508
import InitECandidate.Proofs.BackendStages.Filtered509
import InitECandidate.Proofs.BackendStages.Filtered510
import InitECandidate.Proofs.BackendStages.Filtered511
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages.FilteredChunk496_511
def sections : LabSem.LabProgHOL 64 := [Filtered496, Filtered497, Filtered498, Filtered499, Filtered500, Filtered501, Filtered502, Filtered503, Filtered504, Filtered505, Filtered506, Filtered507, Filtered508, Filtered509, Filtered510, Filtered511]
theorem compiled_eq : SectionChunk496_511.sections.map (fun sec => { sec with lines := sec.lines.filter LabFilter.notSkip }) = sections := by
  change [{ section496 with lines := section496.lines.filter LabFilter.notSkip }, { section497 with lines := section497.lines.filter LabFilter.notSkip }, { section498 with lines := section498.lines.filter LabFilter.notSkip }, { section499 with lines := section499.lines.filter LabFilter.notSkip }, { section500 with lines := section500.lines.filter LabFilter.notSkip }, { section501 with lines := section501.lines.filter LabFilter.notSkip }, { section502 with lines := section502.lines.filter LabFilter.notSkip }, { section503 with lines := section503.lines.filter LabFilter.notSkip }, { section504 with lines := section504.lines.filter LabFilter.notSkip }, { section505 with lines := section505.lines.filter LabFilter.notSkip }, { section506 with lines := section506.lines.filter LabFilter.notSkip }, { section507 with lines := section507.lines.filter LabFilter.notSkip }, { section508 with lines := section508.lines.filter LabFilter.notSkip }, { section509 with lines := section509.lines.filter LabFilter.notSkip }, { section510 with lines := section510.lines.filter LabFilter.notSkip }, { section511 with lines := section511.lines.filter LabFilter.notSkip }] = sections
  rw [Filtered496_eq, Filtered497_eq, Filtered498_eq, Filtered499_eq, Filtered500_eq, Filtered501_eq, Filtered502_eq, Filtered503_eq, Filtered504_eq, Filtered505_eq, Filtered506_eq, Filtered507_eq, Filtered508_eq, Filtered509_eq, Filtered510_eq, Filtered511_eq]
  rfl
#print axioms compiled_eq
end InitECandidate.Proofs.BackendStages.FilteredChunk496_511
