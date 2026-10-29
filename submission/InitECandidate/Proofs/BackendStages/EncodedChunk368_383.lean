import InitECandidate.Proofs.BackendStages.FilteredChunk368_383
import InitECandidate.Proofs.BackendStages.Encoded368
import InitECandidate.Proofs.BackendStages.Encoded369
import InitECandidate.Proofs.BackendStages.Encoded370
import InitECandidate.Proofs.BackendStages.Encoded371
import InitECandidate.Proofs.BackendStages.Encoded372
import InitECandidate.Proofs.BackendStages.Encoded373
import InitECandidate.Proofs.BackendStages.Encoded374
import InitECandidate.Proofs.BackendStages.Encoded375
import InitECandidate.Proofs.BackendStages.Encoded376
import InitECandidate.Proofs.BackendStages.Encoded377
import InitECandidate.Proofs.BackendStages.Encoded378
import InitECandidate.Proofs.BackendStages.Encoded379
import InitECandidate.Proofs.BackendStages.Encoded380
import InitECandidate.Proofs.BackendStages.Encoded381
import InitECandidate.Proofs.BackendStages.Encoded382
import InitECandidate.Proofs.BackendStages.Encoded383
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages.EncodedChunk368_383
def sections : LabSem.LabProgHOL 64 := [Encoded368, Encoded369, Encoded370, Encoded371, Encoded372, Encoded373, Encoded374, Encoded375, Encoded376, Encoded377, Encoded378, Encoded379, Encoded380, Encoded381, Encoded382, Encoded383]
theorem compiled_eq : FilteredChunk368_383.sections.map (LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length) = sections := by
  change [LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered368, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered369, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered370, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered371, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered372, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered373, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered374, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered375, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered376, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered377, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered378, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered379, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered380, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered381, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered382, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered383] = sections
  rw [Encoded368_eq, Encoded369_eq, Encoded370_eq, Encoded371_eq, Encoded372_eq, Encoded373_eq, Encoded374_eq, Encoded375_eq, Encoded376_eq, Encoded377_eq, Encoded378_eq, Encoded379_eq, Encoded380_eq, Encoded381_eq, Encoded382_eq, Encoded383_eq]
  rfl
#print axioms compiled_eq
end InitECandidate.Proofs.BackendStages.EncodedChunk368_383
