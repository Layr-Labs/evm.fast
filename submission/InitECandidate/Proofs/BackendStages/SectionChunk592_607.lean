import InitECandidate.Proofs.BackendStages.NamedChunk592_607
import InitECandidate.Proofs.BackendStages.Section592
import InitECandidate.Proofs.BackendStages.Section593
import InitECandidate.Proofs.BackendStages.Section594
import InitECandidate.Proofs.BackendStages.Section595
import InitECandidate.Proofs.BackendStages.Section596
import InitECandidate.Proofs.BackendStages.Section597
import InitECandidate.Proofs.BackendStages.Section598
import InitECandidate.Proofs.BackendStages.Section599
import InitECandidate.Proofs.BackendStages.Section600
import InitECandidate.Proofs.BackendStages.Section601
import InitECandidate.Proofs.BackendStages.Section602
import InitECandidate.Proofs.BackendStages.Section603
import InitECandidate.Proofs.BackendStages.Section604
import InitECandidate.Proofs.BackendStages.Section605
import InitECandidate.Proofs.BackendStages.Section606
import InitECandidate.Proofs.BackendStages.Section607
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages.SectionChunk592_607
def sections : LabSem.LabProgHOL 64 := [section592, section593, section594, section595, section596, section597, section598, section599, section600, section601, section602, section603, section604, section605, section606, section607]
theorem compiled_eq : NamedChunk592_607.bodies.map StackToLab.progToSectionHOL = sections := by
  change [StackToLab.progToSectionHOL Named592, StackToLab.progToSectionHOL Named593, StackToLab.progToSectionHOL Named594, StackToLab.progToSectionHOL Named595, StackToLab.progToSectionHOL Named596, StackToLab.progToSectionHOL Named597, StackToLab.progToSectionHOL Named598, StackToLab.progToSectionHOL Named599, StackToLab.progToSectionHOL Named600, StackToLab.progToSectionHOL Named601, StackToLab.progToSectionHOL Named602, StackToLab.progToSectionHOL Named603, StackToLab.progToSectionHOL Named604, StackToLab.progToSectionHOL Named605, StackToLab.progToSectionHOL Named606, StackToLab.progToSectionHOL Named607] = sections
  rw [section592_eq, section593_eq, section594_eq, section595_eq, section596_eq, section597_eq, section598_eq, section599_eq, section600_eq, section601_eq, section602_eq, section603_eq, section604_eq, section605_eq, section606_eq, section607_eq]
  rfl
#print axioms compiled_eq
end InitECandidate.Proofs.BackendStages.SectionChunk592_607
