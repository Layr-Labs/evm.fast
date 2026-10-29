import InitECandidate.Proofs.BackendStages.NamedChunk624_639
import InitECandidate.Proofs.BackendStages.Section624
import InitECandidate.Proofs.BackendStages.Section625
import InitECandidate.Proofs.BackendStages.Section626
import InitECandidate.Proofs.BackendStages.Section627
import InitECandidate.Proofs.BackendStages.Section628
import InitECandidate.Proofs.BackendStages.Section629
import InitECandidate.Proofs.BackendStages.Section630
import InitECandidate.Proofs.BackendStages.Section631
import InitECandidate.Proofs.BackendStages.Section632
import InitECandidate.Proofs.BackendStages.Section633
import InitECandidate.Proofs.BackendStages.Section634
import InitECandidate.Proofs.BackendStages.Section635
import InitECandidate.Proofs.BackendStages.Section636
import InitECandidate.Proofs.BackendStages.Section637
import InitECandidate.Proofs.BackendStages.Section638
import InitECandidate.Proofs.BackendStages.Section639
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages.SectionChunk624_639
def sections : LabSem.LabProgHOL 64 := [section624, section625, section626, section627, section628, section629, section630, section631, section632, section633, section634, section635, section636, section637, section638, section639]
theorem compiled_eq : NamedChunk624_639.bodies.map StackToLab.progToSectionHOL = sections := by
  change [StackToLab.progToSectionHOL Named624, StackToLab.progToSectionHOL Named625, StackToLab.progToSectionHOL Named626, StackToLab.progToSectionHOL Named627, StackToLab.progToSectionHOL Named628, StackToLab.progToSectionHOL Named629, StackToLab.progToSectionHOL Named630, StackToLab.progToSectionHOL Named631, StackToLab.progToSectionHOL Named632, StackToLab.progToSectionHOL Named633, StackToLab.progToSectionHOL Named634, StackToLab.progToSectionHOL Named635, StackToLab.progToSectionHOL Named636, StackToLab.progToSectionHOL Named637, StackToLab.progToSectionHOL Named638, StackToLab.progToSectionHOL Named639] = sections
  rw [section624_eq, section625_eq, section626_eq, section627_eq, section628_eq, section629_eq, section630_eq, section631_eq, section632_eq, section633_eq, section634_eq, section635_eq, section636_eq, section637_eq, section638_eq, section639_eq]
  rfl
#print axioms compiled_eq
end InitECandidate.Proofs.BackendStages.SectionChunk624_639
