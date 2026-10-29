import InitECandidate.Proofs.BackendStages.NamedChunk720_735
import InitECandidate.Proofs.BackendStages.Section720
import InitECandidate.Proofs.BackendStages.Section721
import InitECandidate.Proofs.BackendStages.Section722
import InitECandidate.Proofs.BackendStages.Section723
import InitECandidate.Proofs.BackendStages.Section724
import InitECandidate.Proofs.BackendStages.Section725
import InitECandidate.Proofs.BackendStages.Section726
import InitECandidate.Proofs.BackendStages.Section727
import InitECandidate.Proofs.BackendStages.Section728
import InitECandidate.Proofs.BackendStages.Section729
import InitECandidate.Proofs.BackendStages.Section730
import InitECandidate.Proofs.BackendStages.Section731
import InitECandidate.Proofs.BackendStages.Section732
import InitECandidate.Proofs.BackendStages.Section733
import InitECandidate.Proofs.BackendStages.Section734
import InitECandidate.Proofs.BackendStages.Section735
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages.SectionChunk720_735
def sections : LabSem.LabProgHOL 64 := [section720, section721, section722, section723, section724, section725, section726, section727, section728, section729, section730, section731, section732, section733, section734, section735]
theorem compiled_eq : NamedChunk720_735.bodies.map StackToLab.progToSectionHOL = sections := by
  change [StackToLab.progToSectionHOL Named720, StackToLab.progToSectionHOL Named721, StackToLab.progToSectionHOL Named722, StackToLab.progToSectionHOL Named723, StackToLab.progToSectionHOL Named724, StackToLab.progToSectionHOL Named725, StackToLab.progToSectionHOL Named726, StackToLab.progToSectionHOL Named727, StackToLab.progToSectionHOL Named728, StackToLab.progToSectionHOL Named729, StackToLab.progToSectionHOL Named730, StackToLab.progToSectionHOL Named731, StackToLab.progToSectionHOL Named732, StackToLab.progToSectionHOL Named733, StackToLab.progToSectionHOL Named734, StackToLab.progToSectionHOL Named735] = sections
  rw [section720_eq, section721_eq, section722_eq, section723_eq, section724_eq, section725_eq, section726_eq, section727_eq, section728_eq, section729_eq, section730_eq, section731_eq, section732_eq, section733_eq, section734_eq, section735_eq]
  rfl
#print axioms compiled_eq
end InitECandidate.Proofs.BackendStages.SectionChunk720_735
