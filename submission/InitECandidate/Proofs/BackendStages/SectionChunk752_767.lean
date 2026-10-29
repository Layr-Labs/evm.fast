import InitECandidate.Proofs.BackendStages.NamedChunk752_767
import InitECandidate.Proofs.BackendStages.Section752
import InitECandidate.Proofs.BackendStages.Section753
import InitECandidate.Proofs.BackendStages.Section754
import InitECandidate.Proofs.BackendStages.Section755
import InitECandidate.Proofs.BackendStages.Section756
import InitECandidate.Proofs.BackendStages.Section757
import InitECandidate.Proofs.BackendStages.Section758
import InitECandidate.Proofs.BackendStages.Section759
import InitECandidate.Proofs.BackendStages.Section760
import InitECandidate.Proofs.BackendStages.Section761
import InitECandidate.Proofs.BackendStages.Section762
import InitECandidate.Proofs.BackendStages.Section763
import InitECandidate.Proofs.BackendStages.Section764
import InitECandidate.Proofs.BackendStages.Section765
import InitECandidate.Proofs.BackendStages.Section766
import InitECandidate.Proofs.BackendStages.Section767
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages.SectionChunk752_767
def sections : LabSem.LabProgHOL 64 := [section752, section753, section754, section755, section756, section757, section758, section759, section760, section761, section762, section763, section764, section765, section766, section767]
theorem compiled_eq : NamedChunk752_767.bodies.map StackToLab.progToSectionHOL = sections := by
  change [StackToLab.progToSectionHOL Named752, StackToLab.progToSectionHOL Named753, StackToLab.progToSectionHOL Named754, StackToLab.progToSectionHOL Named755, StackToLab.progToSectionHOL Named756, StackToLab.progToSectionHOL Named757, StackToLab.progToSectionHOL Named758, StackToLab.progToSectionHOL Named759, StackToLab.progToSectionHOL Named760, StackToLab.progToSectionHOL Named761, StackToLab.progToSectionHOL Named762, StackToLab.progToSectionHOL Named763, StackToLab.progToSectionHOL Named764, StackToLab.progToSectionHOL Named765, StackToLab.progToSectionHOL Named766, StackToLab.progToSectionHOL Named767] = sections
  rw [section752_eq, section753_eq, section754_eq, section755_eq, section756_eq, section757_eq, section758_eq, section759_eq, section760_eq, section761_eq, section762_eq, section763_eq, section764_eq, section765_eq, section766_eq, section767_eq]
  rfl
#print axioms compiled_eq
end InitECandidate.Proofs.BackendStages.SectionChunk752_767
