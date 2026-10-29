import InitECandidate.Proofs.BackendStages.FilteredChunk432_447
import InitECandidate.Proofs.BackendStages.Encoded432
import InitECandidate.Proofs.BackendStages.Encoded433
import InitECandidate.Proofs.BackendStages.Encoded434
import InitECandidate.Proofs.BackendStages.Encoded435
import InitECandidate.Proofs.BackendStages.Encoded436
import InitECandidate.Proofs.BackendStages.Encoded437
import InitECandidate.Proofs.BackendStages.Encoded438
import InitECandidate.Proofs.BackendStages.Encoded439
import InitECandidate.Proofs.BackendStages.Encoded440
import InitECandidate.Proofs.BackendStages.Encoded441
import InitECandidate.Proofs.BackendStages.Encoded442
import InitECandidate.Proofs.BackendStages.Encoded443
import InitECandidate.Proofs.BackendStages.Encoded444
import InitECandidate.Proofs.BackendStages.Encoded445
import InitECandidate.Proofs.BackendStages.Encoded446
import InitECandidate.Proofs.BackendStages.Encoded447
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages.EncodedChunk432_447
def sections : LabSem.LabProgHOL 64 := [Encoded432, Encoded433, Encoded434, Encoded435, Encoded436, Encoded437, Encoded438, Encoded439, Encoded440, Encoded441, Encoded442, Encoded443, Encoded444, Encoded445, Encoded446, Encoded447]
theorem compiled_eq : FilteredChunk432_447.sections.map (LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length) = sections := by
  change [LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered432, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered433, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered434, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered435, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered436, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered437, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered438, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered439, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered440, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered441, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered442, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered443, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered444, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered445, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered446, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered447] = sections
  rw [Encoded432_eq, Encoded433_eq, Encoded434_eq, Encoded435_eq, Encoded436_eq, Encoded437_eq, Encoded438_eq, Encoded439_eq, Encoded440_eq, Encoded441_eq, Encoded442_eq, Encoded443_eq, Encoded444_eq, Encoded445_eq, Encoded446_eq, Encoded447_eq]
  rfl
#print axioms compiled_eq
end InitECandidate.Proofs.BackendStages.EncodedChunk432_447
