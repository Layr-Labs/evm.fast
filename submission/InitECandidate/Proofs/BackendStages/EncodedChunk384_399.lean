import InitECandidate.Proofs.BackendStages.FilteredChunk384_399
import InitECandidate.Proofs.BackendStages.Encoded384
import InitECandidate.Proofs.BackendStages.Encoded385
import InitECandidate.Proofs.BackendStages.Encoded386
import InitECandidate.Proofs.BackendStages.Encoded387
import InitECandidate.Proofs.BackendStages.Encoded388
import InitECandidate.Proofs.BackendStages.Encoded389
import InitECandidate.Proofs.BackendStages.Encoded390
import InitECandidate.Proofs.BackendStages.Encoded391
import InitECandidate.Proofs.BackendStages.Encoded392
import InitECandidate.Proofs.BackendStages.Encoded393
import InitECandidate.Proofs.BackendStages.Encoded394
import InitECandidate.Proofs.BackendStages.Encoded395
import InitECandidate.Proofs.BackendStages.Encoded396
import InitECandidate.Proofs.BackendStages.Encoded397
import InitECandidate.Proofs.BackendStages.Encoded398
import InitECandidate.Proofs.BackendStages.Encoded399
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages.EncodedChunk384_399
def sections : LabSem.LabProgHOL 64 := [Encoded384, Encoded385, Encoded386, Encoded387, Encoded388, Encoded389, Encoded390, Encoded391, Encoded392, Encoded393, Encoded394, Encoded395, Encoded396, Encoded397, Encoded398, Encoded399]
theorem compiled_eq : FilteredChunk384_399.sections.map (LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length) = sections := by
  change [LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered384, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered385, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered386, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered387, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered388, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered389, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered390, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered391, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered392, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered393, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered394, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered395, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered396, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered397, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered398, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered399] = sections
  rw [Encoded384_eq, Encoded385_eq, Encoded386_eq, Encoded387_eq, Encoded388_eq, Encoded389_eq, Encoded390_eq, Encoded391_eq, Encoded392_eq, Encoded393_eq, Encoded394_eq, Encoded395_eq, Encoded396_eq, Encoded397_eq, Encoded398_eq, Encoded399_eq]
  rfl
#print axioms compiled_eq
end InitECandidate.Proofs.BackendStages.EncodedChunk384_399
