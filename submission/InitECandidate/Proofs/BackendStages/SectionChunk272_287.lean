import InitECandidate.Proofs.BackendStages.NamedChunk272_287
import InitECandidate.Proofs.BackendStages.Section272
import InitECandidate.Proofs.BackendStages.Section273
import InitECandidate.Proofs.BackendStages.Section274
import InitECandidate.Proofs.BackendStages.Section275
import InitECandidate.Proofs.BackendStages.Section276
import InitECandidate.Proofs.BackendStages.Section277
import InitECandidate.Proofs.BackendStages.Section278
import InitECandidate.Proofs.BackendStages.Section279
import InitECandidate.Proofs.BackendStages.Section280
import InitECandidate.Proofs.BackendStages.Section281
import InitECandidate.Proofs.BackendStages.Section282
import InitECandidate.Proofs.BackendStages.Section283
import InitECandidate.Proofs.BackendStages.Section284
import InitECandidate.Proofs.BackendStages.Section285
import InitECandidate.Proofs.BackendStages.Section286
import InitECandidate.Proofs.BackendStages.Section287
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages.SectionChunk272_287
def sections : LabSem.LabProgHOL 64 := [section272, section273, section274, section275, section276, section277, section278, section279, section280, section281, section282, section283, section284, section285, section286, section287]
theorem compiled_eq : NamedChunk272_287.bodies.map StackToLab.progToSectionHOL = sections := by
  change [StackToLab.progToSectionHOL Named272, StackToLab.progToSectionHOL Named273, StackToLab.progToSectionHOL Named274, StackToLab.progToSectionHOL Named275, StackToLab.progToSectionHOL Named276, StackToLab.progToSectionHOL Named277, StackToLab.progToSectionHOL Named278, StackToLab.progToSectionHOL Named279, StackToLab.progToSectionHOL Named280, StackToLab.progToSectionHOL Named281, StackToLab.progToSectionHOL Named282, StackToLab.progToSectionHOL Named283, StackToLab.progToSectionHOL Named284, StackToLab.progToSectionHOL Named285, StackToLab.progToSectionHOL Named286, StackToLab.progToSectionHOL Named287] = sections
  rw [section272_eq, section273_eq, section274_eq, section275_eq, section276_eq, section277_eq, section278_eq, section279_eq, section280_eq, section281_eq, section282_eq, section283_eq, section284_eq, section285_eq, section286_eq, section287_eq]
  rfl
#print axioms compiled_eq
end InitECandidate.Proofs.BackendStages.SectionChunk272_287
