import InitECandidate.Proofs.BackendStages.NamedChunk496_511
import InitECandidate.Proofs.BackendStages.Section496
import InitECandidate.Proofs.BackendStages.Section497
import InitECandidate.Proofs.BackendStages.Section498
import InitECandidate.Proofs.BackendStages.Section499
import InitECandidate.Proofs.BackendStages.Section500
import InitECandidate.Proofs.BackendStages.Section501
import InitECandidate.Proofs.BackendStages.Section502
import InitECandidate.Proofs.BackendStages.Section503
import InitECandidate.Proofs.BackendStages.Section504
import InitECandidate.Proofs.BackendStages.Section505
import InitECandidate.Proofs.BackendStages.Section506
import InitECandidate.Proofs.BackendStages.Section507
import InitECandidate.Proofs.BackendStages.Section508
import InitECandidate.Proofs.BackendStages.Section509
import InitECandidate.Proofs.BackendStages.Section510
import InitECandidate.Proofs.BackendStages.Section511
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages.SectionChunk496_511
def sections : LabSem.LabProgHOL 64 := [section496, section497, section498, section499, section500, section501, section502, section503, section504, section505, section506, section507, section508, section509, section510, section511]
theorem compiled_eq : NamedChunk496_511.bodies.map StackToLab.progToSectionHOL = sections := by
  change [StackToLab.progToSectionHOL Named496, StackToLab.progToSectionHOL Named497, StackToLab.progToSectionHOL Named498, StackToLab.progToSectionHOL Named499, StackToLab.progToSectionHOL Named500, StackToLab.progToSectionHOL Named501, StackToLab.progToSectionHOL Named502, StackToLab.progToSectionHOL Named503, StackToLab.progToSectionHOL Named504, StackToLab.progToSectionHOL Named505, StackToLab.progToSectionHOL Named506, StackToLab.progToSectionHOL Named507, StackToLab.progToSectionHOL Named508, StackToLab.progToSectionHOL Named509, StackToLab.progToSectionHOL Named510, StackToLab.progToSectionHOL Named511] = sections
  rw [section496_eq, section497_eq, section498_eq, section499_eq, section500_eq, section501_eq, section502_eq, section503_eq, section504_eq, section505_eq, section506_eq, section507_eq, section508_eq, section509_eq, section510_eq, section511_eq]
  rfl
#print axioms compiled_eq
end InitECandidate.Proofs.BackendStages.SectionChunk496_511
