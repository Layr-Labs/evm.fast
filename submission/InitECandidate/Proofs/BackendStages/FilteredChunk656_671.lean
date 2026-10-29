import InitECandidate.Proofs.BackendStages.SectionChunk656_671
import InitECandidate.Proofs.BackendStages.Filtered656
import InitECandidate.Proofs.BackendStages.Filtered657
import InitECandidate.Proofs.BackendStages.Filtered658
import InitECandidate.Proofs.BackendStages.Filtered659
import InitECandidate.Proofs.BackendStages.Filtered660
import InitECandidate.Proofs.BackendStages.Filtered661
import InitECandidate.Proofs.BackendStages.Filtered662
import InitECandidate.Proofs.BackendStages.Filtered663
import InitECandidate.Proofs.BackendStages.Filtered664
import InitECandidate.Proofs.BackendStages.Filtered665
import InitECandidate.Proofs.BackendStages.Filtered666
import InitECandidate.Proofs.BackendStages.Filtered667
import InitECandidate.Proofs.BackendStages.Filtered668
import InitECandidate.Proofs.BackendStages.Filtered669
import InitECandidate.Proofs.BackendStages.Filtered670
import InitECandidate.Proofs.BackendStages.Filtered671
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages.FilteredChunk656_671
def sections : LabSem.LabProgHOL 64 := [Filtered656, Filtered657, Filtered658, Filtered659, Filtered660, Filtered661, Filtered662, Filtered663, Filtered664, Filtered665, Filtered666, Filtered667, Filtered668, Filtered669, Filtered670, Filtered671]
theorem compiled_eq : SectionChunk656_671.sections.map (fun sec => { sec with lines := sec.lines.filter LabFilter.notSkip }) = sections := by
  change [{ section656 with lines := section656.lines.filter LabFilter.notSkip }, { section657 with lines := section657.lines.filter LabFilter.notSkip }, { section658 with lines := section658.lines.filter LabFilter.notSkip }, { section659 with lines := section659.lines.filter LabFilter.notSkip }, { section660 with lines := section660.lines.filter LabFilter.notSkip }, { section661 with lines := section661.lines.filter LabFilter.notSkip }, { section662 with lines := section662.lines.filter LabFilter.notSkip }, { section663 with lines := section663.lines.filter LabFilter.notSkip }, { section664 with lines := section664.lines.filter LabFilter.notSkip }, { section665 with lines := section665.lines.filter LabFilter.notSkip }, { section666 with lines := section666.lines.filter LabFilter.notSkip }, { section667 with lines := section667.lines.filter LabFilter.notSkip }, { section668 with lines := section668.lines.filter LabFilter.notSkip }, { section669 with lines := section669.lines.filter LabFilter.notSkip }, { section670 with lines := section670.lines.filter LabFilter.notSkip }, { section671 with lines := section671.lines.filter LabFilter.notSkip }] = sections
  rw [Filtered656_eq, Filtered657_eq, Filtered658_eq, Filtered659_eq, Filtered660_eq, Filtered661_eq, Filtered662_eq, Filtered663_eq, Filtered664_eq, Filtered665_eq, Filtered666_eq, Filtered667_eq, Filtered668_eq, Filtered669_eq, Filtered670_eq, Filtered671_eq]
  rfl
#print axioms compiled_eq
end InitECandidate.Proofs.BackendStages.FilteredChunk656_671
