import InitECandidate.Proofs.BackendStages.NamedChunk432_447
import InitECandidate.Proofs.BackendStages.Section432
import InitECandidate.Proofs.BackendStages.Section433
import InitECandidate.Proofs.BackendStages.Section434
import InitECandidate.Proofs.BackendStages.Section435
import InitECandidate.Proofs.BackendStages.Section436
import InitECandidate.Proofs.BackendStages.Section437
import InitECandidate.Proofs.BackendStages.Section438
import InitECandidate.Proofs.BackendStages.Section439
import InitECandidate.Proofs.BackendStages.Section440
import InitECandidate.Proofs.BackendStages.Section441
import InitECandidate.Proofs.BackendStages.Section442
import InitECandidate.Proofs.BackendStages.Section443
import InitECandidate.Proofs.BackendStages.Section444
import InitECandidate.Proofs.BackendStages.Section445
import InitECandidate.Proofs.BackendStages.Section446
import InitECandidate.Proofs.BackendStages.Section447
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages.SectionChunk432_447
def sections : LabSem.LabProgHOL 64 := [section432, section433, section434, section435, section436, section437, section438, section439, section440, section441, section442, section443, section444, section445, section446, section447]
theorem compiled_eq : NamedChunk432_447.bodies.map StackToLab.progToSectionHOL = sections := by
  change [StackToLab.progToSectionHOL Named432, StackToLab.progToSectionHOL Named433, StackToLab.progToSectionHOL Named434, StackToLab.progToSectionHOL Named435, StackToLab.progToSectionHOL Named436, StackToLab.progToSectionHOL Named437, StackToLab.progToSectionHOL Named438, StackToLab.progToSectionHOL Named439, StackToLab.progToSectionHOL Named440, StackToLab.progToSectionHOL Named441, StackToLab.progToSectionHOL Named442, StackToLab.progToSectionHOL Named443, StackToLab.progToSectionHOL Named444, StackToLab.progToSectionHOL Named445, StackToLab.progToSectionHOL Named446, StackToLab.progToSectionHOL Named447] = sections
  rw [section432_eq, section433_eq, section434_eq, section435_eq, section436_eq, section437_eq, section438_eq, section439_eq, section440_eq, section441_eq, section442_eq, section443_eq, section444_eq, section445_eq, section446_eq, section447_eq]
  rfl
#print axioms compiled_eq
end InitECandidate.Proofs.BackendStages.SectionChunk432_447
