import InitECandidate.Proofs.BackendStages.NamedChunk688_703
import InitECandidate.Proofs.BackendStages.Section688
import InitECandidate.Proofs.BackendStages.Section689
import InitECandidate.Proofs.BackendStages.Section690
import InitECandidate.Proofs.BackendStages.Section691
import InitECandidate.Proofs.BackendStages.Section692
import InitECandidate.Proofs.BackendStages.Section693
import InitECandidate.Proofs.BackendStages.Section694
import InitECandidate.Proofs.BackendStages.Section695
import InitECandidate.Proofs.BackendStages.Section696
import InitECandidate.Proofs.BackendStages.Section697
import InitECandidate.Proofs.BackendStages.Section698
import InitECandidate.Proofs.BackendStages.Section699
import InitECandidate.Proofs.BackendStages.Section700
import InitECandidate.Proofs.BackendStages.Section701
import InitECandidate.Proofs.BackendStages.Section702
import InitECandidate.Proofs.BackendStages.Section703
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages.SectionChunk688_703
def sections : LabSem.LabProgHOL 64 := [section688, section689, section690, section691, section692, section693, section694, section695, section696, section697, section698, section699, section700, section701, section702, section703]
theorem compiled_eq : NamedChunk688_703.bodies.map StackToLab.progToSectionHOL = sections := by
  change [StackToLab.progToSectionHOL Named688, StackToLab.progToSectionHOL Named689, StackToLab.progToSectionHOL Named690, StackToLab.progToSectionHOL Named691, StackToLab.progToSectionHOL Named692, StackToLab.progToSectionHOL Named693, StackToLab.progToSectionHOL Named694, StackToLab.progToSectionHOL Named695, StackToLab.progToSectionHOL Named696, StackToLab.progToSectionHOL Named697, StackToLab.progToSectionHOL Named698, StackToLab.progToSectionHOL Named699, StackToLab.progToSectionHOL Named700, StackToLab.progToSectionHOL Named701, StackToLab.progToSectionHOL Named702, StackToLab.progToSectionHOL Named703] = sections
  rw [section688_eq, section689_eq, section690_eq, section691_eq, section692_eq, section693_eq, section694_eq, section695_eq, section696_eq, section697_eq, section698_eq, section699_eq, section700_eq, section701_eq, section702_eq, section703_eq]
  rfl
#print axioms compiled_eq
end InitECandidate.Proofs.BackendStages.SectionChunk688_703
