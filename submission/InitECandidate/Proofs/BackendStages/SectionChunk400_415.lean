import InitECandidate.Proofs.BackendStages.NamedChunk400_415
import InitECandidate.Proofs.BackendStages.Section400
import InitECandidate.Proofs.BackendStages.Section401
import InitECandidate.Proofs.BackendStages.Section402
import InitECandidate.Proofs.BackendStages.Section403
import InitECandidate.Proofs.BackendStages.Section404
import InitECandidate.Proofs.BackendStages.Section405
import InitECandidate.Proofs.BackendStages.Section406
import InitECandidate.Proofs.BackendStages.Section407
import InitECandidate.Proofs.BackendStages.Section408
import InitECandidate.Proofs.BackendStages.Section409
import InitECandidate.Proofs.BackendStages.Section410
import InitECandidate.Proofs.BackendStages.Section411
import InitECandidate.Proofs.BackendStages.Section412
import InitECandidate.Proofs.BackendStages.Section413
import InitECandidate.Proofs.BackendStages.Section414
import InitECandidate.Proofs.BackendStages.Section415
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages.SectionChunk400_415
def sections : LabSem.LabProgHOL 64 := [section400, section401, section402, section403, section404, section405, section406, section407, section408, section409, section410, section411, section412, section413, section414, section415]
theorem compiled_eq : NamedChunk400_415.bodies.map StackToLab.progToSectionHOL = sections := by
  change [StackToLab.progToSectionHOL Named400, StackToLab.progToSectionHOL Named401, StackToLab.progToSectionHOL Named402, StackToLab.progToSectionHOL Named403, StackToLab.progToSectionHOL Named404, StackToLab.progToSectionHOL Named405, StackToLab.progToSectionHOL Named406, StackToLab.progToSectionHOL Named407, StackToLab.progToSectionHOL Named408, StackToLab.progToSectionHOL Named409, StackToLab.progToSectionHOL Named410, StackToLab.progToSectionHOL Named411, StackToLab.progToSectionHOL Named412, StackToLab.progToSectionHOL Named413, StackToLab.progToSectionHOL Named414, StackToLab.progToSectionHOL Named415] = sections
  rw [section400_eq, section401_eq, section402_eq, section403_eq, section404_eq, section405_eq, section406_eq, section407_eq, section408_eq, section409_eq, section410_eq, section411_eq, section412_eq, section413_eq, section414_eq, section415_eq]
  rfl
#print axioms compiled_eq
end InitECandidate.Proofs.BackendStages.SectionChunk400_415
