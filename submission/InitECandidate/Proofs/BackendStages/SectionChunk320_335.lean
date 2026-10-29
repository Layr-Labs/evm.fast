import InitECandidate.Proofs.BackendStages.NamedChunk320_335
import InitECandidate.Proofs.BackendStages.Section320
import InitECandidate.Proofs.BackendStages.Section321
import InitECandidate.Proofs.BackendStages.Section322
import InitECandidate.Proofs.BackendStages.Section323
import InitECandidate.Proofs.BackendStages.Section324
import InitECandidate.Proofs.BackendStages.Section325
import InitECandidate.Proofs.BackendStages.Section326
import InitECandidate.Proofs.BackendStages.Section327
import InitECandidate.Proofs.BackendStages.Section328
import InitECandidate.Proofs.BackendStages.Section329
import InitECandidate.Proofs.BackendStages.Section330
import InitECandidate.Proofs.BackendStages.Section331
import InitECandidate.Proofs.BackendStages.Section332
import InitECandidate.Proofs.BackendStages.Section333
import InitECandidate.Proofs.BackendStages.Section334
import InitECandidate.Proofs.BackendStages.Section335
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages.SectionChunk320_335
def sections : LabSem.LabProgHOL 64 := [section320, section321, section322, section323, section324, section325, section326, section327, section328, section329, section330, section331, section332, section333, section334, section335]
theorem compiled_eq : NamedChunk320_335.bodies.map StackToLab.progToSectionHOL = sections := by
  change [StackToLab.progToSectionHOL Named320, StackToLab.progToSectionHOL Named321, StackToLab.progToSectionHOL Named322, StackToLab.progToSectionHOL Named323, StackToLab.progToSectionHOL Named324, StackToLab.progToSectionHOL Named325, StackToLab.progToSectionHOL Named326, StackToLab.progToSectionHOL Named327, StackToLab.progToSectionHOL Named328, StackToLab.progToSectionHOL Named329, StackToLab.progToSectionHOL Named330, StackToLab.progToSectionHOL Named331, StackToLab.progToSectionHOL Named332, StackToLab.progToSectionHOL Named333, StackToLab.progToSectionHOL Named334, StackToLab.progToSectionHOL Named335] = sections
  rw [section320_eq, section321_eq, section322_eq, section323_eq, section324_eq, section325_eq, section326_eq, section327_eq, section328_eq, section329_eq, section330_eq, section331_eq, section332_eq, section333_eq, section334_eq, section335_eq]
  rfl
#print axioms compiled_eq
end InitECandidate.Proofs.BackendStages.SectionChunk320_335
