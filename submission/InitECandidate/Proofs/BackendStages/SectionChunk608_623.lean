import InitECandidate.Proofs.BackendStages.NamedChunk608_623
import InitECandidate.Proofs.BackendStages.Section608
import InitECandidate.Proofs.BackendStages.Section609
import InitECandidate.Proofs.BackendStages.Section610
import InitECandidate.Proofs.BackendStages.Section611
import InitECandidate.Proofs.BackendStages.Section612
import InitECandidate.Proofs.BackendStages.Section613
import InitECandidate.Proofs.BackendStages.Section614
import InitECandidate.Proofs.BackendStages.Section615
import InitECandidate.Proofs.BackendStages.Section616
import InitECandidate.Proofs.BackendStages.Section617
import InitECandidate.Proofs.BackendStages.Section618
import InitECandidate.Proofs.BackendStages.Section619
import InitECandidate.Proofs.BackendStages.Section620
import InitECandidate.Proofs.BackendStages.Section621
import InitECandidate.Proofs.BackendStages.Section622
import InitECandidate.Proofs.BackendStages.Section623
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages.SectionChunk608_623
def sections : LabSem.LabProgHOL 64 := [section608, section609, section610, section611, section612, section613, section614, section615, section616, section617, section618, section619, section620, section621, section622, section623]
theorem compiled_eq : NamedChunk608_623.bodies.map StackToLab.progToSectionHOL = sections := by
  change [StackToLab.progToSectionHOL Named608, StackToLab.progToSectionHOL Named609, StackToLab.progToSectionHOL Named610, StackToLab.progToSectionHOL Named611, StackToLab.progToSectionHOL Named612, StackToLab.progToSectionHOL Named613, StackToLab.progToSectionHOL Named614, StackToLab.progToSectionHOL Named615, StackToLab.progToSectionHOL Named616, StackToLab.progToSectionHOL Named617, StackToLab.progToSectionHOL Named618, StackToLab.progToSectionHOL Named619, StackToLab.progToSectionHOL Named620, StackToLab.progToSectionHOL Named621, StackToLab.progToSectionHOL Named622, StackToLab.progToSectionHOL Named623] = sections
  rw [section608_eq, section609_eq, section610_eq, section611_eq, section612_eq, section613_eq, section614_eq, section615_eq, section616_eq, section617_eq, section618_eq, section619_eq, section620_eq, section621_eq, section622_eq, section623_eq]
  rfl
#print axioms compiled_eq
end InitECandidate.Proofs.BackendStages.SectionChunk608_623
