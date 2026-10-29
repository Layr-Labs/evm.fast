import InitECandidate.Proofs.BackendStages.NamedChunk864_877
import InitECandidate.Proofs.BackendStages.Section864
import InitECandidate.Proofs.BackendStages.Section865
import InitECandidate.Proofs.BackendStages.Section866
import InitECandidate.Proofs.BackendStages.Section867
import InitECandidate.Proofs.BackendStages.Section868
import InitECandidate.Proofs.BackendStages.Section869
import InitECandidate.Proofs.BackendStages.Section870
import InitECandidate.Proofs.BackendStages.Section871
import InitECandidate.Proofs.BackendStages.Section872
import InitECandidate.Proofs.BackendStages.Section873
import InitECandidate.Proofs.BackendStages.Section874
import InitECandidate.Proofs.BackendStages.Section875
import InitECandidate.Proofs.BackendStages.Section876
import InitECandidate.Proofs.BackendStages.Section877
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages.SectionChunk864_877
def sections : LabSem.LabProgHOL 64 := [section864, section865, section866, section867, section868, section869, section870, section871, section872, section873, section874, section875, section876, section877]
theorem compiled_eq : NamedChunk864_877.bodies.map StackToLab.progToSectionHOL = sections := by
  change [StackToLab.progToSectionHOL Named864, StackToLab.progToSectionHOL Named865, StackToLab.progToSectionHOL Named866, StackToLab.progToSectionHOL Named867, StackToLab.progToSectionHOL Named868, StackToLab.progToSectionHOL Named869, StackToLab.progToSectionHOL Named870, StackToLab.progToSectionHOL Named871, StackToLab.progToSectionHOL Named872, StackToLab.progToSectionHOL Named873, StackToLab.progToSectionHOL Named874, StackToLab.progToSectionHOL Named875, StackToLab.progToSectionHOL Named876, StackToLab.progToSectionHOL Named877] = sections
  rw [section864_eq, section865_eq, section866_eq, section867_eq, section868_eq, section869_eq, section870_eq, section871_eq, section872_eq, section873_eq, section874_eq, section875_eq, section876_eq, section877_eq]
  rfl
#print axioms compiled_eq
end InitECandidate.Proofs.BackendStages.SectionChunk864_877
