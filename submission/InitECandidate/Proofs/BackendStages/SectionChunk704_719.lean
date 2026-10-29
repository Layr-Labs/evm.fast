import InitECandidate.Proofs.BackendStages.NamedChunk704_719
import InitECandidate.Proofs.BackendStages.Section704
import InitECandidate.Proofs.BackendStages.Section705
import InitECandidate.Proofs.BackendStages.Section706
import InitECandidate.Proofs.BackendStages.Section707
import InitECandidate.Proofs.BackendStages.Section708
import InitECandidate.Proofs.BackendStages.Section709
import InitECandidate.Proofs.BackendStages.Section710
import InitECandidate.Proofs.BackendStages.Section711
import InitECandidate.Proofs.BackendStages.Section712
import InitECandidate.Proofs.BackendStages.Section713
import InitECandidate.Proofs.BackendStages.Section714
import InitECandidate.Proofs.BackendStages.Section715
import InitECandidate.Proofs.BackendStages.Section716
import InitECandidate.Proofs.BackendStages.Section717
import InitECandidate.Proofs.BackendStages.Section718
import InitECandidate.Proofs.BackendStages.Section719
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages.SectionChunk704_719
def sections : LabSem.LabProgHOL 64 := [section704, section705, section706, section707, section708, section709, section710, section711, section712, section713, section714, section715, section716, section717, section718, section719]
theorem compiled_eq : NamedChunk704_719.bodies.map StackToLab.progToSectionHOL = sections := by
  change [StackToLab.progToSectionHOL Named704, StackToLab.progToSectionHOL Named705, StackToLab.progToSectionHOL Named706, StackToLab.progToSectionHOL Named707, StackToLab.progToSectionHOL Named708, StackToLab.progToSectionHOL Named709, StackToLab.progToSectionHOL Named710, StackToLab.progToSectionHOL Named711, StackToLab.progToSectionHOL Named712, StackToLab.progToSectionHOL Named713, StackToLab.progToSectionHOL Named714, StackToLab.progToSectionHOL Named715, StackToLab.progToSectionHOL Named716, StackToLab.progToSectionHOL Named717, StackToLab.progToSectionHOL Named718, StackToLab.progToSectionHOL Named719] = sections
  rw [section704_eq, section705_eq, section706_eq, section707_eq, section708_eq, section709_eq, section710_eq, section711_eq, section712_eq, section713_eq, section714_eq, section715_eq, section716_eq, section717_eq, section718_eq, section719_eq]
  rfl
#print axioms compiled_eq
end InitECandidate.Proofs.BackendStages.SectionChunk704_719
