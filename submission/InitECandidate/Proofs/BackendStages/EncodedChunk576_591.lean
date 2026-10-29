import InitECandidate.Proofs.BackendStages.FilteredChunk576_591
import InitECandidate.Proofs.BackendStages.Encoded576
import InitECandidate.Proofs.BackendStages.Encoded577
import InitECandidate.Proofs.BackendStages.Encoded578
import InitECandidate.Proofs.BackendStages.Encoded579
import InitECandidate.Proofs.BackendStages.Encoded580
import InitECandidate.Proofs.BackendStages.Encoded581
import InitECandidate.Proofs.BackendStages.Encoded582
import InitECandidate.Proofs.BackendStages.Encoded583
import InitECandidate.Proofs.BackendStages.Encoded584
import InitECandidate.Proofs.BackendStages.Encoded585
import InitECandidate.Proofs.BackendStages.Encoded586
import InitECandidate.Proofs.BackendStages.Encoded587
import InitECandidate.Proofs.BackendStages.Encoded588
import InitECandidate.Proofs.BackendStages.Encoded589
import InitECandidate.Proofs.BackendStages.Encoded590
import InitECandidate.Proofs.BackendStages.Encoded591
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages.EncodedChunk576_591
def sections : LabSem.LabProgHOL 64 := [Encoded576, Encoded577, Encoded578, Encoded579, Encoded580, Encoded581, Encoded582, Encoded583, Encoded584, Encoded585, Encoded586, Encoded587, Encoded588, Encoded589, Encoded590, Encoded591]
theorem compiled_eq : FilteredChunk576_591.sections.map (LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length) = sections := by
  change [LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered576, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered577, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered578, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered579, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered580, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered581, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered582, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered583, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered584, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered585, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered586, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered587, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered588, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered589, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered590, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered591] = sections
  rw [Encoded576_eq, Encoded577_eq, Encoded578_eq, Encoded579_eq, Encoded580_eq, Encoded581_eq, Encoded582_eq, Encoded583_eq, Encoded584_eq, Encoded585_eq, Encoded586_eq, Encoded587_eq, Encoded588_eq, Encoded589_eq, Encoded590_eq, Encoded591_eq]
  rfl
#print axioms compiled_eq
end InitECandidate.Proofs.BackendStages.EncodedChunk576_591
