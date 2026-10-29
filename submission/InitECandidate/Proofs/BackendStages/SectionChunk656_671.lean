import InitECandidate.Proofs.BackendStages.NamedChunk656_671
import InitECandidate.Proofs.BackendStages.Section656
import InitECandidate.Proofs.BackendStages.Section657
import InitECandidate.Proofs.BackendStages.Section658
import InitECandidate.Proofs.BackendStages.Section659
import InitECandidate.Proofs.BackendStages.Section660
import InitECandidate.Proofs.BackendStages.Section661
import InitECandidate.Proofs.BackendStages.Section662
import InitECandidate.Proofs.BackendStages.Section663
import InitECandidate.Proofs.BackendStages.Section664
import InitECandidate.Proofs.BackendStages.Section665
import InitECandidate.Proofs.BackendStages.Section666
import InitECandidate.Proofs.BackendStages.Section667
import InitECandidate.Proofs.BackendStages.Section668
import InitECandidate.Proofs.BackendStages.Section669
import InitECandidate.Proofs.BackendStages.Section670
import InitECandidate.Proofs.BackendStages.Section671
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages.SectionChunk656_671
def sections : LabSem.LabProgHOL 64 := [section656, section657, section658, section659, section660, section661, section662, section663, section664, section665, section666, section667, section668, section669, section670, section671]
theorem compiled_eq : NamedChunk656_671.bodies.map StackToLab.progToSectionHOL = sections := by
  change [StackToLab.progToSectionHOL Named656, StackToLab.progToSectionHOL Named657, StackToLab.progToSectionHOL Named658, StackToLab.progToSectionHOL Named659, StackToLab.progToSectionHOL Named660, StackToLab.progToSectionHOL Named661, StackToLab.progToSectionHOL Named662, StackToLab.progToSectionHOL Named663, StackToLab.progToSectionHOL Named664, StackToLab.progToSectionHOL Named665, StackToLab.progToSectionHOL Named666, StackToLab.progToSectionHOL Named667, StackToLab.progToSectionHOL Named668, StackToLab.progToSectionHOL Named669, StackToLab.progToSectionHOL Named670, StackToLab.progToSectionHOL Named671] = sections
  rw [section656_eq, section657_eq, section658_eq, section659_eq, section660_eq, section661_eq, section662_eq, section663_eq, section664_eq, section665_eq, section666_eq, section667_eq, section668_eq, section669_eq, section670_eq, section671_eq]
  rfl
#print axioms compiled_eq
end InitECandidate.Proofs.BackendStages.SectionChunk656_671
