import InitECandidate.Proofs.BackendStages.SectionChunk720_735
import InitECandidate.Proofs.BackendStages.Filtered720
import InitECandidate.Proofs.BackendStages.Filtered721
import InitECandidate.Proofs.BackendStages.Filtered722
import InitECandidate.Proofs.BackendStages.Filtered723
import InitECandidate.Proofs.BackendStages.Filtered724
import InitECandidate.Proofs.BackendStages.Filtered725
import InitECandidate.Proofs.BackendStages.Filtered726
import InitECandidate.Proofs.BackendStages.Filtered727
import InitECandidate.Proofs.BackendStages.Filtered728
import InitECandidate.Proofs.BackendStages.Filtered729
import InitECandidate.Proofs.BackendStages.Filtered730
import InitECandidate.Proofs.BackendStages.Filtered731
import InitECandidate.Proofs.BackendStages.Filtered732
import InitECandidate.Proofs.BackendStages.Filtered733
import InitECandidate.Proofs.BackendStages.Filtered734
import InitECandidate.Proofs.BackendStages.Filtered735
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages.FilteredChunk720_735
def sections : LabSem.LabProgHOL 64 := [Filtered720, Filtered721, Filtered722, Filtered723, Filtered724, Filtered725, Filtered726, Filtered727, Filtered728, Filtered729, Filtered730, Filtered731, Filtered732, Filtered733, Filtered734, Filtered735]
theorem compiled_eq : SectionChunk720_735.sections.map (fun sec => { sec with lines := sec.lines.filter LabFilter.notSkip }) = sections := by
  change [{ section720 with lines := section720.lines.filter LabFilter.notSkip }, { section721 with lines := section721.lines.filter LabFilter.notSkip }, { section722 with lines := section722.lines.filter LabFilter.notSkip }, { section723 with lines := section723.lines.filter LabFilter.notSkip }, { section724 with lines := section724.lines.filter LabFilter.notSkip }, { section725 with lines := section725.lines.filter LabFilter.notSkip }, { section726 with lines := section726.lines.filter LabFilter.notSkip }, { section727 with lines := section727.lines.filter LabFilter.notSkip }, { section728 with lines := section728.lines.filter LabFilter.notSkip }, { section729 with lines := section729.lines.filter LabFilter.notSkip }, { section730 with lines := section730.lines.filter LabFilter.notSkip }, { section731 with lines := section731.lines.filter LabFilter.notSkip }, { section732 with lines := section732.lines.filter LabFilter.notSkip }, { section733 with lines := section733.lines.filter LabFilter.notSkip }, { section734 with lines := section734.lines.filter LabFilter.notSkip }, { section735 with lines := section735.lines.filter LabFilter.notSkip }] = sections
  rw [Filtered720_eq, Filtered721_eq, Filtered722_eq, Filtered723_eq, Filtered724_eq, Filtered725_eq, Filtered726_eq, Filtered727_eq, Filtered728_eq, Filtered729_eq, Filtered730_eq, Filtered731_eq, Filtered732_eq, Filtered733_eq, Filtered734_eq, Filtered735_eq]
  rfl
#print axioms compiled_eq
end InitECandidate.Proofs.BackendStages.FilteredChunk720_735
