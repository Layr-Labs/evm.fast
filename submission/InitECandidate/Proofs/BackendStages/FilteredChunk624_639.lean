import InitECandidate.Proofs.BackendStages.SectionChunk624_639
import InitECandidate.Proofs.BackendStages.Filtered624
import InitECandidate.Proofs.BackendStages.Filtered625
import InitECandidate.Proofs.BackendStages.Filtered626
import InitECandidate.Proofs.BackendStages.Filtered627
import InitECandidate.Proofs.BackendStages.Filtered628
import InitECandidate.Proofs.BackendStages.Filtered629
import InitECandidate.Proofs.BackendStages.Filtered630
import InitECandidate.Proofs.BackendStages.Filtered631
import InitECandidate.Proofs.BackendStages.Filtered632
import InitECandidate.Proofs.BackendStages.Filtered633
import InitECandidate.Proofs.BackendStages.Filtered634
import InitECandidate.Proofs.BackendStages.Filtered635
import InitECandidate.Proofs.BackendStages.Filtered636
import InitECandidate.Proofs.BackendStages.Filtered637
import InitECandidate.Proofs.BackendStages.Filtered638
import InitECandidate.Proofs.BackendStages.Filtered639
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages.FilteredChunk624_639
def sections : LabSem.LabProgHOL 64 := [Filtered624, Filtered625, Filtered626, Filtered627, Filtered628, Filtered629, Filtered630, Filtered631, Filtered632, Filtered633, Filtered634, Filtered635, Filtered636, Filtered637, Filtered638, Filtered639]
theorem compiled_eq : SectionChunk624_639.sections.map (fun sec => { sec with lines := sec.lines.filter LabFilter.notSkip }) = sections := by
  change [{ section624 with lines := section624.lines.filter LabFilter.notSkip }, { section625 with lines := section625.lines.filter LabFilter.notSkip }, { section626 with lines := section626.lines.filter LabFilter.notSkip }, { section627 with lines := section627.lines.filter LabFilter.notSkip }, { section628 with lines := section628.lines.filter LabFilter.notSkip }, { section629 with lines := section629.lines.filter LabFilter.notSkip }, { section630 with lines := section630.lines.filter LabFilter.notSkip }, { section631 with lines := section631.lines.filter LabFilter.notSkip }, { section632 with lines := section632.lines.filter LabFilter.notSkip }, { section633 with lines := section633.lines.filter LabFilter.notSkip }, { section634 with lines := section634.lines.filter LabFilter.notSkip }, { section635 with lines := section635.lines.filter LabFilter.notSkip }, { section636 with lines := section636.lines.filter LabFilter.notSkip }, { section637 with lines := section637.lines.filter LabFilter.notSkip }, { section638 with lines := section638.lines.filter LabFilter.notSkip }, { section639 with lines := section639.lines.filter LabFilter.notSkip }] = sections
  rw [Filtered624_eq, Filtered625_eq, Filtered626_eq, Filtered627_eq, Filtered628_eq, Filtered629_eq, Filtered630_eq, Filtered631_eq, Filtered632_eq, Filtered633_eq, Filtered634_eq, Filtered635_eq, Filtered636_eq, Filtered637_eq, Filtered638_eq, Filtered639_eq]
  rfl
#print axioms compiled_eq
end InitECandidate.Proofs.BackendStages.FilteredChunk624_639
