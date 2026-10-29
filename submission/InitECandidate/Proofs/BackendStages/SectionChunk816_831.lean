import InitECandidate.Proofs.BackendStages.NamedChunk816_831
import InitECandidate.Proofs.BackendStages.Section816
import InitECandidate.Proofs.BackendStages.Section817
import InitECandidate.Proofs.BackendStages.Section818
import InitECandidate.Proofs.BackendStages.Section819
import InitECandidate.Proofs.BackendStages.Section820
import InitECandidate.Proofs.BackendStages.Section821
import InitECandidate.Proofs.BackendStages.Section822
import InitECandidate.Proofs.BackendStages.Section823
import InitECandidate.Proofs.BackendStages.Section824
import InitECandidate.Proofs.BackendStages.Section825
import InitECandidate.Proofs.BackendStages.Section826
import InitECandidate.Proofs.BackendStages.Section827
import InitECandidate.Proofs.BackendStages.Section828
import InitECandidate.Proofs.BackendStages.Section829
import InitECandidate.Proofs.BackendStages.Section830
import InitECandidate.Proofs.BackendStages.Section831
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages.SectionChunk816_831
def sections : LabSem.LabProgHOL 64 := [section816, section817, section818, section819, section820, section821, section822, section823, section824, section825, section826, section827, section828, section829, section830, section831]
theorem compiled_eq : NamedChunk816_831.bodies.map StackToLab.progToSectionHOL = sections := by
  change [StackToLab.progToSectionHOL Named816, StackToLab.progToSectionHOL Named817, StackToLab.progToSectionHOL Named818, StackToLab.progToSectionHOL Named819, StackToLab.progToSectionHOL Named820, StackToLab.progToSectionHOL Named821, StackToLab.progToSectionHOL Named822, StackToLab.progToSectionHOL Named823, StackToLab.progToSectionHOL Named824, StackToLab.progToSectionHOL Named825, StackToLab.progToSectionHOL Named826, StackToLab.progToSectionHOL Named827, StackToLab.progToSectionHOL Named828, StackToLab.progToSectionHOL Named829, StackToLab.progToSectionHOL Named830, StackToLab.progToSectionHOL Named831] = sections
  rw [section816_eq, section817_eq, section818_eq, section819_eq, section820_eq, section821_eq, section822_eq, section823_eq, section824_eq, section825_eq, section826_eq, section827_eq, section828_eq, section829_eq, section830_eq, section831_eq]
  rfl
#print axioms compiled_eq
end InitECandidate.Proofs.BackendStages.SectionChunk816_831
