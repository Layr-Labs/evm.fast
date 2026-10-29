import InitECandidate.Proofs.BackendStages.NamedChunk304_319
import InitECandidate.Proofs.BackendStages.Section304
import InitECandidate.Proofs.BackendStages.Section305
import InitECandidate.Proofs.BackendStages.Section306
import InitECandidate.Proofs.BackendStages.Section307
import InitECandidate.Proofs.BackendStages.Section308
import InitECandidate.Proofs.BackendStages.Section309
import InitECandidate.Proofs.BackendStages.Section310
import InitECandidate.Proofs.BackendStages.Section311
import InitECandidate.Proofs.BackendStages.Section312
import InitECandidate.Proofs.BackendStages.Section313
import InitECandidate.Proofs.BackendStages.Section314
import InitECandidate.Proofs.BackendStages.Section315
import InitECandidate.Proofs.BackendStages.Section316
import InitECandidate.Proofs.BackendStages.Section317
import InitECandidate.Proofs.BackendStages.Section318
import InitECandidate.Proofs.BackendStages.Section319
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages.SectionChunk304_319
def sections : LabSem.LabProgHOL 64 := [section304, section305, section306, section307, section308, section309, section310, section311, section312, section313, section314, section315, section316, section317, section318, section319]
theorem compiled_eq : NamedChunk304_319.bodies.map StackToLab.progToSectionHOL = sections := by
  change [StackToLab.progToSectionHOL Named304, StackToLab.progToSectionHOL Named305, StackToLab.progToSectionHOL Named306, StackToLab.progToSectionHOL Named307, StackToLab.progToSectionHOL Named308, StackToLab.progToSectionHOL Named309, StackToLab.progToSectionHOL Named310, StackToLab.progToSectionHOL Named311, StackToLab.progToSectionHOL Named312, StackToLab.progToSectionHOL Named313, StackToLab.progToSectionHOL Named314, StackToLab.progToSectionHOL Named315, StackToLab.progToSectionHOL Named316, StackToLab.progToSectionHOL Named317, StackToLab.progToSectionHOL Named318, StackToLab.progToSectionHOL Named319] = sections
  rw [section304_eq, section305_eq, section306_eq, section307_eq, section308_eq, section309_eq, section310_eq, section311_eq, section312_eq, section313_eq, section314_eq, section315_eq, section316_eq, section317_eq, section318_eq, section319_eq]
  rfl
#print axioms compiled_eq
end InitECandidate.Proofs.BackendStages.SectionChunk304_319
