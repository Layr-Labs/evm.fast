import InitECandidate.Proofs.BackendStages.SectionChunk560_575
import InitECandidate.Proofs.BackendStages.Filtered560
import InitECandidate.Proofs.BackendStages.Filtered561
import InitECandidate.Proofs.BackendStages.Filtered562
import InitECandidate.Proofs.BackendStages.Filtered563
import InitECandidate.Proofs.BackendStages.Filtered564
import InitECandidate.Proofs.BackendStages.Filtered565
import InitECandidate.Proofs.BackendStages.Filtered566
import InitECandidate.Proofs.BackendStages.Filtered567
import InitECandidate.Proofs.BackendStages.Filtered568
import InitECandidate.Proofs.BackendStages.Filtered569
import InitECandidate.Proofs.BackendStages.Filtered570
import InitECandidate.Proofs.BackendStages.Filtered571
import InitECandidate.Proofs.BackendStages.Filtered572
import InitECandidate.Proofs.BackendStages.Filtered573
import InitECandidate.Proofs.BackendStages.Filtered574
import InitECandidate.Proofs.BackendStages.Filtered575
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages.FilteredChunk560_575
def sections : LabSem.LabProgHOL 64 := [Filtered560, Filtered561, Filtered562, Filtered563, Filtered564, Filtered565, Filtered566, Filtered567, Filtered568, Filtered569, Filtered570, Filtered571, Filtered572, Filtered573, Filtered574, Filtered575]
theorem compiled_eq : SectionChunk560_575.sections.map (fun sec => { sec with lines := sec.lines.filter LabFilter.notSkip }) = sections := by
  change [{ section560 with lines := section560.lines.filter LabFilter.notSkip }, { section561 with lines := section561.lines.filter LabFilter.notSkip }, { section562 with lines := section562.lines.filter LabFilter.notSkip }, { section563 with lines := section563.lines.filter LabFilter.notSkip }, { section564 with lines := section564.lines.filter LabFilter.notSkip }, { section565 with lines := section565.lines.filter LabFilter.notSkip }, { section566 with lines := section566.lines.filter LabFilter.notSkip }, { section567 with lines := section567.lines.filter LabFilter.notSkip }, { section568 with lines := section568.lines.filter LabFilter.notSkip }, { section569 with lines := section569.lines.filter LabFilter.notSkip }, { section570 with lines := section570.lines.filter LabFilter.notSkip }, { section571 with lines := section571.lines.filter LabFilter.notSkip }, { section572 with lines := section572.lines.filter LabFilter.notSkip }, { section573 with lines := section573.lines.filter LabFilter.notSkip }, { section574 with lines := section574.lines.filter LabFilter.notSkip }, { section575 with lines := section575.lines.filter LabFilter.notSkip }] = sections
  rw [Filtered560_eq, Filtered561_eq, Filtered562_eq, Filtered563_eq, Filtered564_eq, Filtered565_eq, Filtered566_eq, Filtered567_eq, Filtered568_eq, Filtered569_eq, Filtered570_eq, Filtered571_eq, Filtered572_eq, Filtered573_eq, Filtered574_eq, Filtered575_eq]
  rfl
#print axioms compiled_eq
end InitECandidate.Proofs.BackendStages.FilteredChunk560_575
