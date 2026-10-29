import InitECandidate.Proofs.BackendStages.SectionChunk640_655
import InitECandidate.Proofs.BackendStages.Filtered640
import InitECandidate.Proofs.BackendStages.Filtered641
import InitECandidate.Proofs.BackendStages.Filtered642
import InitECandidate.Proofs.BackendStages.Filtered643
import InitECandidate.Proofs.BackendStages.Filtered644
import InitECandidate.Proofs.BackendStages.Filtered645
import InitECandidate.Proofs.BackendStages.Filtered646
import InitECandidate.Proofs.BackendStages.Filtered647
import InitECandidate.Proofs.BackendStages.Filtered648
import InitECandidate.Proofs.BackendStages.Filtered649
import InitECandidate.Proofs.BackendStages.Filtered650
import InitECandidate.Proofs.BackendStages.Filtered651
import InitECandidate.Proofs.BackendStages.Filtered652
import InitECandidate.Proofs.BackendStages.Filtered653
import InitECandidate.Proofs.BackendStages.Filtered654
import InitECandidate.Proofs.BackendStages.Filtered655
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages.FilteredChunk640_655
def sections : LabSem.LabProgHOL 64 := [Filtered640, Filtered641, Filtered642, Filtered643, Filtered644, Filtered645, Filtered646, Filtered647, Filtered648, Filtered649, Filtered650, Filtered651, Filtered652, Filtered653, Filtered654, Filtered655]
theorem compiled_eq : SectionChunk640_655.sections.map (fun sec => { sec with lines := sec.lines.filter LabFilter.notSkip }) = sections := by
  change [{ section640 with lines := section640.lines.filter LabFilter.notSkip }, { section641 with lines := section641.lines.filter LabFilter.notSkip }, { section642 with lines := section642.lines.filter LabFilter.notSkip }, { section643 with lines := section643.lines.filter LabFilter.notSkip }, { section644 with lines := section644.lines.filter LabFilter.notSkip }, { section645 with lines := section645.lines.filter LabFilter.notSkip }, { section646 with lines := section646.lines.filter LabFilter.notSkip }, { section647 with lines := section647.lines.filter LabFilter.notSkip }, { section648 with lines := section648.lines.filter LabFilter.notSkip }, { section649 with lines := section649.lines.filter LabFilter.notSkip }, { section650 with lines := section650.lines.filter LabFilter.notSkip }, { section651 with lines := section651.lines.filter LabFilter.notSkip }, { section652 with lines := section652.lines.filter LabFilter.notSkip }, { section653 with lines := section653.lines.filter LabFilter.notSkip }, { section654 with lines := section654.lines.filter LabFilter.notSkip }, { section655 with lines := section655.lines.filter LabFilter.notSkip }] = sections
  rw [Filtered640_eq, Filtered641_eq, Filtered642_eq, Filtered643_eq, Filtered644_eq, Filtered645_eq, Filtered646_eq, Filtered647_eq, Filtered648_eq, Filtered649_eq, Filtered650_eq, Filtered651_eq, Filtered652_eq, Filtered653_eq, Filtered654_eq, Filtered655_eq]
  rfl
#print axioms compiled_eq
end InitECandidate.Proofs.BackendStages.FilteredChunk640_655
