import InitECandidate.Proofs.BackendStages.SectionChunk512_527
import InitECandidate.Proofs.BackendStages.Filtered512
import InitECandidate.Proofs.BackendStages.Filtered513
import InitECandidate.Proofs.BackendStages.Filtered514
import InitECandidate.Proofs.BackendStages.Filtered515
import InitECandidate.Proofs.BackendStages.Filtered516
import InitECandidate.Proofs.BackendStages.Filtered517
import InitECandidate.Proofs.BackendStages.Filtered518
import InitECandidate.Proofs.BackendStages.Filtered519
import InitECandidate.Proofs.BackendStages.Filtered520
import InitECandidate.Proofs.BackendStages.Filtered521
import InitECandidate.Proofs.BackendStages.Filtered522
import InitECandidate.Proofs.BackendStages.Filtered523
import InitECandidate.Proofs.BackendStages.Filtered524
import InitECandidate.Proofs.BackendStages.Filtered525
import InitECandidate.Proofs.BackendStages.Filtered526
import InitECandidate.Proofs.BackendStages.Filtered527
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages.FilteredChunk512_527
def sections : LabSem.LabProgHOL 64 := [Filtered512, Filtered513, Filtered514, Filtered515, Filtered516, Filtered517, Filtered518, Filtered519, Filtered520, Filtered521, Filtered522, Filtered523, Filtered524, Filtered525, Filtered526, Filtered527]
theorem compiled_eq : SectionChunk512_527.sections.map (fun sec => { sec with lines := sec.lines.filter LabFilter.notSkip }) = sections := by
  change [{ section512 with lines := section512.lines.filter LabFilter.notSkip }, { section513 with lines := section513.lines.filter LabFilter.notSkip }, { section514 with lines := section514.lines.filter LabFilter.notSkip }, { section515 with lines := section515.lines.filter LabFilter.notSkip }, { section516 with lines := section516.lines.filter LabFilter.notSkip }, { section517 with lines := section517.lines.filter LabFilter.notSkip }, { section518 with lines := section518.lines.filter LabFilter.notSkip }, { section519 with lines := section519.lines.filter LabFilter.notSkip }, { section520 with lines := section520.lines.filter LabFilter.notSkip }, { section521 with lines := section521.lines.filter LabFilter.notSkip }, { section522 with lines := section522.lines.filter LabFilter.notSkip }, { section523 with lines := section523.lines.filter LabFilter.notSkip }, { section524 with lines := section524.lines.filter LabFilter.notSkip }, { section525 with lines := section525.lines.filter LabFilter.notSkip }, { section526 with lines := section526.lines.filter LabFilter.notSkip }, { section527 with lines := section527.lines.filter LabFilter.notSkip }] = sections
  rw [Filtered512_eq, Filtered513_eq, Filtered514_eq, Filtered515_eq, Filtered516_eq, Filtered517_eq, Filtered518_eq, Filtered519_eq, Filtered520_eq, Filtered521_eq, Filtered522_eq, Filtered523_eq, Filtered524_eq, Filtered525_eq, Filtered526_eq, Filtered527_eq]
  rfl
#print axioms compiled_eq
end InitECandidate.Proofs.BackendStages.FilteredChunk512_527
