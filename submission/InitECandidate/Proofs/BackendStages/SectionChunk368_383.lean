import InitECandidate.Proofs.BackendStages.NamedChunk368_383
import InitECandidate.Proofs.BackendStages.Section368
import InitECandidate.Proofs.BackendStages.Section369
import InitECandidate.Proofs.BackendStages.Section370
import InitECandidate.Proofs.BackendStages.Section371
import InitECandidate.Proofs.BackendStages.Section372
import InitECandidate.Proofs.BackendStages.Section373
import InitECandidate.Proofs.BackendStages.Section374
import InitECandidate.Proofs.BackendStages.Section375
import InitECandidate.Proofs.BackendStages.Section376
import InitECandidate.Proofs.BackendStages.Section377
import InitECandidate.Proofs.BackendStages.Section378
import InitECandidate.Proofs.BackendStages.Section379
import InitECandidate.Proofs.BackendStages.Section380
import InitECandidate.Proofs.BackendStages.Section381
import InitECandidate.Proofs.BackendStages.Section382
import InitECandidate.Proofs.BackendStages.Section383
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages.SectionChunk368_383
def sections : LabSem.LabProgHOL 64 := [section368, section369, section370, section371, section372, section373, section374, section375, section376, section377, section378, section379, section380, section381, section382, section383]
theorem compiled_eq : NamedChunk368_383.bodies.map StackToLab.progToSectionHOL = sections := by
  change [StackToLab.progToSectionHOL Named368, StackToLab.progToSectionHOL Named369, StackToLab.progToSectionHOL Named370, StackToLab.progToSectionHOL Named371, StackToLab.progToSectionHOL Named372, StackToLab.progToSectionHOL Named373, StackToLab.progToSectionHOL Named374, StackToLab.progToSectionHOL Named375, StackToLab.progToSectionHOL Named376, StackToLab.progToSectionHOL Named377, StackToLab.progToSectionHOL Named378, StackToLab.progToSectionHOL Named379, StackToLab.progToSectionHOL Named380, StackToLab.progToSectionHOL Named381, StackToLab.progToSectionHOL Named382, StackToLab.progToSectionHOL Named383] = sections
  rw [section368_eq, section369_eq, section370_eq, section371_eq, section372_eq, section373_eq, section374_eq, section375_eq, section376_eq, section377_eq, section378_eq, section379_eq, section380_eq, section381_eq, section382_eq, section383_eq]
  rfl
#print axioms compiled_eq
end InitECandidate.Proofs.BackendStages.SectionChunk368_383
