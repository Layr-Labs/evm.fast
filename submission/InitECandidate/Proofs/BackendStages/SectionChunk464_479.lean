import InitECandidate.Proofs.BackendStages.NamedChunk464_479
import InitECandidate.Proofs.BackendStages.Section464
import InitECandidate.Proofs.BackendStages.Section465
import InitECandidate.Proofs.BackendStages.Section466
import InitECandidate.Proofs.BackendStages.Section467
import InitECandidate.Proofs.BackendStages.Section468
import InitECandidate.Proofs.BackendStages.Section469
import InitECandidate.Proofs.BackendStages.Section470
import InitECandidate.Proofs.BackendStages.Section471
import InitECandidate.Proofs.BackendStages.Section472
import InitECandidate.Proofs.BackendStages.Section473
import InitECandidate.Proofs.BackendStages.Section474
import InitECandidate.Proofs.BackendStages.Section475
import InitECandidate.Proofs.BackendStages.Section476
import InitECandidate.Proofs.BackendStages.Section477
import InitECandidate.Proofs.BackendStages.Section478
import InitECandidate.Proofs.BackendStages.Section479
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages.SectionChunk464_479
def sections : LabSem.LabProgHOL 64 := [section464, section465, section466, section467, section468, section469, section470, section471, section472, section473, section474, section475, section476, section477, section478, section479]
theorem compiled_eq : NamedChunk464_479.bodies.map StackToLab.progToSectionHOL = sections := by
  change [StackToLab.progToSectionHOL Named464, StackToLab.progToSectionHOL Named465, StackToLab.progToSectionHOL Named466, StackToLab.progToSectionHOL Named467, StackToLab.progToSectionHOL Named468, StackToLab.progToSectionHOL Named469, StackToLab.progToSectionHOL Named470, StackToLab.progToSectionHOL Named471, StackToLab.progToSectionHOL Named472, StackToLab.progToSectionHOL Named473, StackToLab.progToSectionHOL Named474, StackToLab.progToSectionHOL Named475, StackToLab.progToSectionHOL Named476, StackToLab.progToSectionHOL Named477, StackToLab.progToSectionHOL Named478, StackToLab.progToSectionHOL Named479] = sections
  rw [section464_eq, section465_eq, section466_eq, section467_eq, section468_eq, section469_eq, section470_eq, section471_eq, section472_eq, section473_eq, section474_eq, section475_eq, section476_eq, section477_eq, section478_eq, section479_eq]
  rfl
#print axioms compiled_eq
end InitECandidate.Proofs.BackendStages.SectionChunk464_479
