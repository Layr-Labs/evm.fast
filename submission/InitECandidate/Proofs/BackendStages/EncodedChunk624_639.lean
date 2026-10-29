import InitECandidate.Proofs.BackendStages.FilteredChunk624_639
import InitECandidate.Proofs.BackendStages.Encoded624
import InitECandidate.Proofs.BackendStages.Encoded625
import InitECandidate.Proofs.BackendStages.Encoded626
import InitECandidate.Proofs.BackendStages.Encoded627
import InitECandidate.Proofs.BackendStages.Encoded628
import InitECandidate.Proofs.BackendStages.Encoded629
import InitECandidate.Proofs.BackendStages.Encoded630
import InitECandidate.Proofs.BackendStages.Encoded631
import InitECandidate.Proofs.BackendStages.Encoded632
import InitECandidate.Proofs.BackendStages.Encoded633
import InitECandidate.Proofs.BackendStages.Encoded634
import InitECandidate.Proofs.BackendStages.Encoded635
import InitECandidate.Proofs.BackendStages.Encoded636
import InitECandidate.Proofs.BackendStages.Encoded637
import InitECandidate.Proofs.BackendStages.Encoded638
import InitECandidate.Proofs.BackendStages.Encoded639
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages.EncodedChunk624_639
def sections : LabSem.LabProgHOL 64 := [Encoded624, Encoded625, Encoded626, Encoded627, Encoded628, Encoded629, Encoded630, Encoded631, Encoded632, Encoded633, Encoded634, Encoded635, Encoded636, Encoded637, Encoded638, Encoded639]
theorem compiled_eq : FilteredChunk624_639.sections.map (LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length) = sections := by
  change [LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered624, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered625, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered626, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered627, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered628, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered629, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered630, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered631, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered632, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered633, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered634, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered635, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered636, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered637, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered638, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered639] = sections
  rw [Encoded624_eq, Encoded625_eq, Encoded626_eq, Encoded627_eq, Encoded628_eq, Encoded629_eq, Encoded630_eq, Encoded631_eq, Encoded632_eq, Encoded633_eq, Encoded634_eq, Encoded635_eq, Encoded636_eq, Encoded637_eq, Encoded638_eq, Encoded639_eq]
  rfl
#print axioms compiled_eq
end InitECandidate.Proofs.BackendStages.EncodedChunk624_639
