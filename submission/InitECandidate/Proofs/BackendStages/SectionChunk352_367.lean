import InitECandidate.Proofs.BackendStages.NamedChunk352_367
import InitECandidate.Proofs.BackendStages.Section352
import InitECandidate.Proofs.BackendStages.Section353
import InitECandidate.Proofs.BackendStages.Section354
import InitECandidate.Proofs.BackendStages.Section355
import InitECandidate.Proofs.BackendStages.Section356
import InitECandidate.Proofs.BackendStages.Section357
import InitECandidate.Proofs.BackendStages.Section358
import InitECandidate.Proofs.BackendStages.Section359
import InitECandidate.Proofs.BackendStages.Section360
import InitECandidate.Proofs.BackendStages.Section361
import InitECandidate.Proofs.BackendStages.Section362
import InitECandidate.Proofs.BackendStages.Section363
import InitECandidate.Proofs.BackendStages.Section364
import InitECandidate.Proofs.BackendStages.Section365
import InitECandidate.Proofs.BackendStages.Section366
import InitECandidate.Proofs.BackendStages.Section367
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages.SectionChunk352_367
def sections : LabSem.LabProgHOL 64 := [section352, section353, section354, section355, section356, section357, section358, section359, section360, section361, section362, section363, section364, section365, section366, section367]
theorem compiled_eq : NamedChunk352_367.bodies.map StackToLab.progToSectionHOL = sections := by
  change [StackToLab.progToSectionHOL Named352, StackToLab.progToSectionHOL Named353, StackToLab.progToSectionHOL Named354, StackToLab.progToSectionHOL Named355, StackToLab.progToSectionHOL Named356, StackToLab.progToSectionHOL Named357, StackToLab.progToSectionHOL Named358, StackToLab.progToSectionHOL Named359, StackToLab.progToSectionHOL Named360, StackToLab.progToSectionHOL Named361, StackToLab.progToSectionHOL Named362, StackToLab.progToSectionHOL Named363, StackToLab.progToSectionHOL Named364, StackToLab.progToSectionHOL Named365, StackToLab.progToSectionHOL Named366, StackToLab.progToSectionHOL Named367] = sections
  rw [section352_eq, section353_eq, section354_eq, section355_eq, section356_eq, section357_eq, section358_eq, section359_eq, section360_eq, section361_eq, section362_eq, section363_eq, section364_eq, section365_eq, section366_eq, section367_eq]
  rfl
#print axioms compiled_eq
end InitECandidate.Proofs.BackendStages.SectionChunk352_367
