import InitECandidate.Proofs.BackendStages.FilteredChunk496_511
import InitECandidate.Proofs.BackendStages.Encoded496
import InitECandidate.Proofs.BackendStages.Encoded497
import InitECandidate.Proofs.BackendStages.Encoded498
import InitECandidate.Proofs.BackendStages.Encoded499
import InitECandidate.Proofs.BackendStages.Encoded500
import InitECandidate.Proofs.BackendStages.Encoded501
import InitECandidate.Proofs.BackendStages.Encoded502
import InitECandidate.Proofs.BackendStages.Encoded503
import InitECandidate.Proofs.BackendStages.Encoded504
import InitECandidate.Proofs.BackendStages.Encoded505
import InitECandidate.Proofs.BackendStages.Encoded506
import InitECandidate.Proofs.BackendStages.Encoded507
import InitECandidate.Proofs.BackendStages.Encoded508
import InitECandidate.Proofs.BackendStages.Encoded509
import InitECandidate.Proofs.BackendStages.Encoded510
import InitECandidate.Proofs.BackendStages.Encoded511
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages.EncodedChunk496_511
def sections : LabSem.LabProgHOL 64 := [Encoded496, Encoded497, Encoded498, Encoded499, Encoded500, Encoded501, Encoded502, Encoded503, Encoded504, Encoded505, Encoded506, Encoded507, Encoded508, Encoded509, Encoded510, Encoded511]
theorem compiled_eq : FilteredChunk496_511.sections.map (LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length) = sections := by
  change [LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered496, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered497, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered498, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered499, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered500, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered501, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered502, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered503, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered504, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered505, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered506, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered507, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered508, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered509, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered510, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered511] = sections
  rw [Encoded496_eq, Encoded497_eq, Encoded498_eq, Encoded499_eq, Encoded500_eq, Encoded501_eq, Encoded502_eq, Encoded503_eq, Encoded504_eq, Encoded505_eq, Encoded506_eq, Encoded507_eq, Encoded508_eq, Encoded509_eq, Encoded510_eq, Encoded511_eq]
  rfl
#print axioms compiled_eq
end InitECandidate.Proofs.BackendStages.EncodedChunk496_511
