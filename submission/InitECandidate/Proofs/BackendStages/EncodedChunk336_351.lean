import InitECandidate.Proofs.BackendStages.FilteredChunk336_351
import InitECandidate.Proofs.BackendStages.Encoded336
import InitECandidate.Proofs.BackendStages.Encoded337
import InitECandidate.Proofs.BackendStages.Encoded338
import InitECandidate.Proofs.BackendStages.Encoded339
import InitECandidate.Proofs.BackendStages.Encoded340
import InitECandidate.Proofs.BackendStages.Encoded341
import InitECandidate.Proofs.BackendStages.Encoded342
import InitECandidate.Proofs.BackendStages.Encoded343
import InitECandidate.Proofs.BackendStages.Encoded344
import InitECandidate.Proofs.BackendStages.Encoded345
import InitECandidate.Proofs.BackendStages.Encoded346
import InitECandidate.Proofs.BackendStages.Encoded347
import InitECandidate.Proofs.BackendStages.Encoded348
import InitECandidate.Proofs.BackendStages.Encoded349
import InitECandidate.Proofs.BackendStages.Encoded350
import InitECandidate.Proofs.BackendStages.Encoded351
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages.EncodedChunk336_351
def sections : LabSem.LabProgHOL 64 := [Encoded336, Encoded337, Encoded338, Encoded339, Encoded340, Encoded341, Encoded342, Encoded343, Encoded344, Encoded345, Encoded346, Encoded347, Encoded348, Encoded349, Encoded350, Encoded351]
theorem compiled_eq : FilteredChunk336_351.sections.map (LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length) = sections := by
  change [LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered336, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered337, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered338, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered339, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered340, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered341, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered342, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered343, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered344, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered345, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered346, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered347, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered348, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered349, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered350, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered351] = sections
  rw [Encoded336_eq, Encoded337_eq, Encoded338_eq, Encoded339_eq, Encoded340_eq, Encoded341_eq, Encoded342_eq, Encoded343_eq, Encoded344_eq, Encoded345_eq, Encoded346_eq, Encoded347_eq, Encoded348_eq, Encoded349_eq, Encoded350_eq, Encoded351_eq]
  rfl
#print axioms compiled_eq
end InitECandidate.Proofs.BackendStages.EncodedChunk336_351
