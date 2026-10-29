import InitECandidate.Proofs.BackendStages.NamedChunk560_575
import InitECandidate.Proofs.BackendStages.Section560
import InitECandidate.Proofs.BackendStages.Section561
import InitECandidate.Proofs.BackendStages.Section562
import InitECandidate.Proofs.BackendStages.Section563
import InitECandidate.Proofs.BackendStages.Section564
import InitECandidate.Proofs.BackendStages.Section565
import InitECandidate.Proofs.BackendStages.Section566
import InitECandidate.Proofs.BackendStages.Section567
import InitECandidate.Proofs.BackendStages.Section568
import InitECandidate.Proofs.BackendStages.Section569
import InitECandidate.Proofs.BackendStages.Section570
import InitECandidate.Proofs.BackendStages.Section571
import InitECandidate.Proofs.BackendStages.Section572
import InitECandidate.Proofs.BackendStages.Section573
import InitECandidate.Proofs.BackendStages.Section574
import InitECandidate.Proofs.BackendStages.Section575
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages.SectionChunk560_575
def sections : LabSem.LabProgHOL 64 := [section560, section561, section562, section563, section564, section565, section566, section567, section568, section569, section570, section571, section572, section573, section574, section575]
theorem compiled_eq : NamedChunk560_575.bodies.map StackToLab.progToSectionHOL = sections := by
  change [StackToLab.progToSectionHOL Named560, StackToLab.progToSectionHOL Named561, StackToLab.progToSectionHOL Named562, StackToLab.progToSectionHOL Named563, StackToLab.progToSectionHOL Named564, StackToLab.progToSectionHOL Named565, StackToLab.progToSectionHOL Named566, StackToLab.progToSectionHOL Named567, StackToLab.progToSectionHOL Named568, StackToLab.progToSectionHOL Named569, StackToLab.progToSectionHOL Named570, StackToLab.progToSectionHOL Named571, StackToLab.progToSectionHOL Named572, StackToLab.progToSectionHOL Named573, StackToLab.progToSectionHOL Named574, StackToLab.progToSectionHOL Named575] = sections
  rw [section560_eq, section561_eq, section562_eq, section563_eq, section564_eq, section565_eq, section566_eq, section567_eq, section568_eq, section569_eq, section570_eq, section571_eq, section572_eq, section573_eq, section574_eq, section575_eq]
  rfl
#print axioms compiled_eq
end InitECandidate.Proofs.BackendStages.SectionChunk560_575
