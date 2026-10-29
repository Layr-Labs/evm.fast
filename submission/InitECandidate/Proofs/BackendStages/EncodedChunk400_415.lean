import InitECandidate.Proofs.BackendStages.FilteredChunk400_415
import InitECandidate.Proofs.BackendStages.Encoded400
import InitECandidate.Proofs.BackendStages.Encoded401
import InitECandidate.Proofs.BackendStages.Encoded402
import InitECandidate.Proofs.BackendStages.Encoded403
import InitECandidate.Proofs.BackendStages.Encoded404
import InitECandidate.Proofs.BackendStages.Encoded405
import InitECandidate.Proofs.BackendStages.Encoded406
import InitECandidate.Proofs.BackendStages.Encoded407
import InitECandidate.Proofs.BackendStages.Encoded408
import InitECandidate.Proofs.BackendStages.Encoded409
import InitECandidate.Proofs.BackendStages.Encoded410
import InitECandidate.Proofs.BackendStages.Encoded411
import InitECandidate.Proofs.BackendStages.Encoded412
import InitECandidate.Proofs.BackendStages.Encoded413
import InitECandidate.Proofs.BackendStages.Encoded414
import InitECandidate.Proofs.BackendStages.Encoded415
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages.EncodedChunk400_415
def sections : LabSem.LabProgHOL 64 := [Encoded400, Encoded401, Encoded402, Encoded403, Encoded404, Encoded405, Encoded406, Encoded407, Encoded408, Encoded409, Encoded410, Encoded411, Encoded412, Encoded413, Encoded414, Encoded415]
theorem compiled_eq : FilteredChunk400_415.sections.map (LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length) = sections := by
  change [LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered400, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered401, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered402, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered403, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered404, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered405, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered406, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered407, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered408, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered409, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered410, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered411, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered412, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered413, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered414, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered415] = sections
  rw [Encoded400_eq, Encoded401_eq, Encoded402_eq, Encoded403_eq, Encoded404_eq, Encoded405_eq, Encoded406_eq, Encoded407_eq, Encoded408_eq, Encoded409_eq, Encoded410_eq, Encoded411_eq, Encoded412_eq, Encoded413_eq, Encoded414_eq, Encoded415_eq]
  rfl
#print axioms compiled_eq
end InitECandidate.Proofs.BackendStages.EncodedChunk400_415
