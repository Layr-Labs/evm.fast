import InitECandidate.Proofs.BackendStages.FilteredChunk592_607
import InitECandidate.Proofs.BackendStages.Encoded592
import InitECandidate.Proofs.BackendStages.Encoded593
import InitECandidate.Proofs.BackendStages.Encoded594
import InitECandidate.Proofs.BackendStages.Encoded595
import InitECandidate.Proofs.BackendStages.Encoded596
import InitECandidate.Proofs.BackendStages.Encoded597
import InitECandidate.Proofs.BackendStages.Encoded598
import InitECandidate.Proofs.BackendStages.Encoded599
import InitECandidate.Proofs.BackendStages.Encoded600
import InitECandidate.Proofs.BackendStages.Encoded601
import InitECandidate.Proofs.BackendStages.Encoded602
import InitECandidate.Proofs.BackendStages.Encoded603
import InitECandidate.Proofs.BackendStages.Encoded604
import InitECandidate.Proofs.BackendStages.Encoded605
import InitECandidate.Proofs.BackendStages.Encoded606
import InitECandidate.Proofs.BackendStages.Encoded607
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages.EncodedChunk592_607
def sections : LabSem.LabProgHOL 64 := [Encoded592, Encoded593, Encoded594, Encoded595, Encoded596, Encoded597, Encoded598, Encoded599, Encoded600, Encoded601, Encoded602, Encoded603, Encoded604, Encoded605, Encoded606, Encoded607]
theorem compiled_eq : FilteredChunk592_607.sections.map (LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length) = sections := by
  change [LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered592, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered593, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered594, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered595, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered596, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered597, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered598, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered599, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered600, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered601, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered602, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered603, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered604, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered605, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered606, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered607] = sections
  rw [Encoded592_eq, Encoded593_eq, Encoded594_eq, Encoded595_eq, Encoded596_eq, Encoded597_eq, Encoded598_eq, Encoded599_eq, Encoded600_eq, Encoded601_eq, Encoded602_eq, Encoded603_eq, Encoded604_eq, Encoded605_eq, Encoded606_eq, Encoded607_eq]
  rfl
#print axioms compiled_eq
end InitECandidate.Proofs.BackendStages.EncodedChunk592_607
