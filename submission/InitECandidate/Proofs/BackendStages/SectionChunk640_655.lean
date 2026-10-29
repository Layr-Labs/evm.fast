import InitECandidate.Proofs.BackendStages.NamedChunk640_655
import InitECandidate.Proofs.BackendStages.Section640
import InitECandidate.Proofs.BackendStages.Section641
import InitECandidate.Proofs.BackendStages.Section642
import InitECandidate.Proofs.BackendStages.Section643
import InitECandidate.Proofs.BackendStages.Section644
import InitECandidate.Proofs.BackendStages.Section645
import InitECandidate.Proofs.BackendStages.Section646
import InitECandidate.Proofs.BackendStages.Section647
import InitECandidate.Proofs.BackendStages.Section648
import InitECandidate.Proofs.BackendStages.Section649
import InitECandidate.Proofs.BackendStages.Section650
import InitECandidate.Proofs.BackendStages.Section651
import InitECandidate.Proofs.BackendStages.Section652
import InitECandidate.Proofs.BackendStages.Section653
import InitECandidate.Proofs.BackendStages.Section654
import InitECandidate.Proofs.BackendStages.Section655
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages.SectionChunk640_655
def sections : LabSem.LabProgHOL 64 := [section640, section641, section642, section643, section644, section645, section646, section647, section648, section649, section650, section651, section652, section653, section654, section655]
theorem compiled_eq : NamedChunk640_655.bodies.map StackToLab.progToSectionHOL = sections := by
  change [StackToLab.progToSectionHOL Named640, StackToLab.progToSectionHOL Named641, StackToLab.progToSectionHOL Named642, StackToLab.progToSectionHOL Named643, StackToLab.progToSectionHOL Named644, StackToLab.progToSectionHOL Named645, StackToLab.progToSectionHOL Named646, StackToLab.progToSectionHOL Named647, StackToLab.progToSectionHOL Named648, StackToLab.progToSectionHOL Named649, StackToLab.progToSectionHOL Named650, StackToLab.progToSectionHOL Named651, StackToLab.progToSectionHOL Named652, StackToLab.progToSectionHOL Named653, StackToLab.progToSectionHOL Named654, StackToLab.progToSectionHOL Named655] = sections
  rw [section640_eq, section641_eq, section642_eq, section643_eq, section644_eq, section645_eq, section646_eq, section647_eq, section648_eq, section649_eq, section650_eq, section651_eq, section652_eq, section653_eq, section654_eq, section655_eq]
  rfl
#print axioms compiled_eq
end InitECandidate.Proofs.BackendStages.SectionChunk640_655
