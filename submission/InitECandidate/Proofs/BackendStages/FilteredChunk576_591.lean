import InitECandidate.Proofs.BackendStages.SectionChunk576_591
import InitECandidate.Proofs.BackendStages.Filtered576
import InitECandidate.Proofs.BackendStages.Filtered577
import InitECandidate.Proofs.BackendStages.Filtered578
import InitECandidate.Proofs.BackendStages.Filtered579
import InitECandidate.Proofs.BackendStages.Filtered580
import InitECandidate.Proofs.BackendStages.Filtered581
import InitECandidate.Proofs.BackendStages.Filtered582
import InitECandidate.Proofs.BackendStages.Filtered583
import InitECandidate.Proofs.BackendStages.Filtered584
import InitECandidate.Proofs.BackendStages.Filtered585
import InitECandidate.Proofs.BackendStages.Filtered586
import InitECandidate.Proofs.BackendStages.Filtered587
import InitECandidate.Proofs.BackendStages.Filtered588
import InitECandidate.Proofs.BackendStages.Filtered589
import InitECandidate.Proofs.BackendStages.Filtered590
import InitECandidate.Proofs.BackendStages.Filtered591
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages.FilteredChunk576_591
def sections : LabSem.LabProgHOL 64 := [Filtered576, Filtered577, Filtered578, Filtered579, Filtered580, Filtered581, Filtered582, Filtered583, Filtered584, Filtered585, Filtered586, Filtered587, Filtered588, Filtered589, Filtered590, Filtered591]
theorem compiled_eq : SectionChunk576_591.sections.map (fun sec => { sec with lines := sec.lines.filter LabFilter.notSkip }) = sections := by
  change [{ section576 with lines := section576.lines.filter LabFilter.notSkip }, { section577 with lines := section577.lines.filter LabFilter.notSkip }, { section578 with lines := section578.lines.filter LabFilter.notSkip }, { section579 with lines := section579.lines.filter LabFilter.notSkip }, { section580 with lines := section580.lines.filter LabFilter.notSkip }, { section581 with lines := section581.lines.filter LabFilter.notSkip }, { section582 with lines := section582.lines.filter LabFilter.notSkip }, { section583 with lines := section583.lines.filter LabFilter.notSkip }, { section584 with lines := section584.lines.filter LabFilter.notSkip }, { section585 with lines := section585.lines.filter LabFilter.notSkip }, { section586 with lines := section586.lines.filter LabFilter.notSkip }, { section587 with lines := section587.lines.filter LabFilter.notSkip }, { section588 with lines := section588.lines.filter LabFilter.notSkip }, { section589 with lines := section589.lines.filter LabFilter.notSkip }, { section590 with lines := section590.lines.filter LabFilter.notSkip }, { section591 with lines := section591.lines.filter LabFilter.notSkip }] = sections
  rw [Filtered576_eq, Filtered577_eq, Filtered578_eq, Filtered579_eq, Filtered580_eq, Filtered581_eq, Filtered582_eq, Filtered583_eq, Filtered584_eq, Filtered585_eq, Filtered586_eq, Filtered587_eq, Filtered588_eq, Filtered589_eq, Filtered590_eq, Filtered591_eq]
  rfl
#print axioms compiled_eq
end InitECandidate.Proofs.BackendStages.FilteredChunk576_591
