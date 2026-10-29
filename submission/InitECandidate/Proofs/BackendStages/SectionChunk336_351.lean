import InitECandidate.Proofs.BackendStages.NamedChunk336_351
import InitECandidate.Proofs.BackendStages.Section336
import InitECandidate.Proofs.BackendStages.Section337
import InitECandidate.Proofs.BackendStages.Section338
import InitECandidate.Proofs.BackendStages.Section339
import InitECandidate.Proofs.BackendStages.Section340
import InitECandidate.Proofs.BackendStages.Section341
import InitECandidate.Proofs.BackendStages.Section342
import InitECandidate.Proofs.BackendStages.Section343
import InitECandidate.Proofs.BackendStages.Section344
import InitECandidate.Proofs.BackendStages.Section345
import InitECandidate.Proofs.BackendStages.Section346
import InitECandidate.Proofs.BackendStages.Section347
import InitECandidate.Proofs.BackendStages.Section348
import InitECandidate.Proofs.BackendStages.Section349
import InitECandidate.Proofs.BackendStages.Section350
import InitECandidate.Proofs.BackendStages.Section351
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages.SectionChunk336_351
def sections : LabSem.LabProgHOL 64 := [section336, section337, section338, section339, section340, section341, section342, section343, section344, section345, section346, section347, section348, section349, section350, section351]
theorem compiled_eq : NamedChunk336_351.bodies.map StackToLab.progToSectionHOL = sections := by
  change [StackToLab.progToSectionHOL Named336, StackToLab.progToSectionHOL Named337, StackToLab.progToSectionHOL Named338, StackToLab.progToSectionHOL Named339, StackToLab.progToSectionHOL Named340, StackToLab.progToSectionHOL Named341, StackToLab.progToSectionHOL Named342, StackToLab.progToSectionHOL Named343, StackToLab.progToSectionHOL Named344, StackToLab.progToSectionHOL Named345, StackToLab.progToSectionHOL Named346, StackToLab.progToSectionHOL Named347, StackToLab.progToSectionHOL Named348, StackToLab.progToSectionHOL Named349, StackToLab.progToSectionHOL Named350, StackToLab.progToSectionHOL Named351] = sections
  rw [section336_eq, section337_eq, section338_eq, section339_eq, section340_eq, section341_eq, section342_eq, section343_eq, section344_eq, section345_eq, section346_eq, section347_eq, section348_eq, section349_eq, section350_eq, section351_eq]
  rfl
#print axioms compiled_eq
end InitECandidate.Proofs.BackendStages.SectionChunk336_351
