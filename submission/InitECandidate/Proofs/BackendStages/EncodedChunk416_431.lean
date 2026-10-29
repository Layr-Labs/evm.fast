import InitECandidate.Proofs.BackendStages.FilteredChunk416_431
import InitECandidate.Proofs.BackendStages.Encoded416
import InitECandidate.Proofs.BackendStages.Encoded417
import InitECandidate.Proofs.BackendStages.Encoded418
import InitECandidate.Proofs.BackendStages.Encoded419
import InitECandidate.Proofs.BackendStages.Encoded420
import InitECandidate.Proofs.BackendStages.Encoded421
import InitECandidate.Proofs.BackendStages.Encoded422
import InitECandidate.Proofs.BackendStages.Encoded423
import InitECandidate.Proofs.BackendStages.Encoded424
import InitECandidate.Proofs.BackendStages.Encoded425
import InitECandidate.Proofs.BackendStages.Encoded426
import InitECandidate.Proofs.BackendStages.Encoded427
import InitECandidate.Proofs.BackendStages.Encoded428
import InitECandidate.Proofs.BackendStages.Encoded429
import InitECandidate.Proofs.BackendStages.Encoded430
import InitECandidate.Proofs.BackendStages.Encoded431
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages.EncodedChunk416_431
def sections : LabSem.LabProgHOL 64 := [Encoded416, Encoded417, Encoded418, Encoded419, Encoded420, Encoded421, Encoded422, Encoded423, Encoded424, Encoded425, Encoded426, Encoded427, Encoded428, Encoded429, Encoded430, Encoded431]
theorem compiled_eq : FilteredChunk416_431.sections.map (LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length) = sections := by
  change [LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered416, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered417, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered418, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered419, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered420, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered421, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered422, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered423, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered424, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered425, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered426, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered427, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered428, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered429, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered430, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered431] = sections
  rw [Encoded416_eq, Encoded417_eq, Encoded418_eq, Encoded419_eq, Encoded420_eq, Encoded421_eq, Encoded422_eq, Encoded423_eq, Encoded424_eq, Encoded425_eq, Encoded426_eq, Encoded427_eq, Encoded428_eq, Encoded429_eq, Encoded430_eq, Encoded431_eq]
  rfl
#print axioms compiled_eq
end InitECandidate.Proofs.BackendStages.EncodedChunk416_431
