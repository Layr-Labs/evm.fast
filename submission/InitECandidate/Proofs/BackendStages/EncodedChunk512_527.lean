import InitECandidate.Proofs.BackendStages.FilteredChunk512_527
import InitECandidate.Proofs.BackendStages.Encoded512
import InitECandidate.Proofs.BackendStages.Encoded513
import InitECandidate.Proofs.BackendStages.Encoded514
import InitECandidate.Proofs.BackendStages.Encoded515
import InitECandidate.Proofs.BackendStages.Encoded516
import InitECandidate.Proofs.BackendStages.Encoded517
import InitECandidate.Proofs.BackendStages.Encoded518
import InitECandidate.Proofs.BackendStages.Encoded519
import InitECandidate.Proofs.BackendStages.Encoded520
import InitECandidate.Proofs.BackendStages.Encoded521
import InitECandidate.Proofs.BackendStages.Encoded522
import InitECandidate.Proofs.BackendStages.Encoded523
import InitECandidate.Proofs.BackendStages.Encoded524
import InitECandidate.Proofs.BackendStages.Encoded525
import InitECandidate.Proofs.BackendStages.Encoded526
import InitECandidate.Proofs.BackendStages.Encoded527
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages.EncodedChunk512_527
def sections : LabSem.LabProgHOL 64 := [Encoded512, Encoded513, Encoded514, Encoded515, Encoded516, Encoded517, Encoded518, Encoded519, Encoded520, Encoded521, Encoded522, Encoded523, Encoded524, Encoded525, Encoded526, Encoded527]
theorem compiled_eq : FilteredChunk512_527.sections.map (LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length) = sections := by
  change [LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered512, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered513, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered514, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered515, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered516, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered517, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered518, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered519, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered520, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered521, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered522, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered523, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered524, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered525, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered526, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered527] = sections
  rw [Encoded512_eq, Encoded513_eq, Encoded514_eq, Encoded515_eq, Encoded516_eq, Encoded517_eq, Encoded518_eq, Encoded519_eq, Encoded520_eq, Encoded521_eq, Encoded522_eq, Encoded523_eq, Encoded524_eq, Encoded525_eq, Encoded526_eq, Encoded527_eq]
  rfl
#print axioms compiled_eq
end InitECandidate.Proofs.BackendStages.EncodedChunk512_527
