import InitECandidate.Proofs.BackendStages.FilteredChunk672_687
import InitECandidate.Proofs.BackendStages.Encoded672
import InitECandidate.Proofs.BackendStages.Encoded673
import InitECandidate.Proofs.BackendStages.Encoded674
import InitECandidate.Proofs.BackendStages.Encoded675
import InitECandidate.Proofs.BackendStages.Encoded676
import InitECandidate.Proofs.BackendStages.Encoded677
import InitECandidate.Proofs.BackendStages.Encoded678
import InitECandidate.Proofs.BackendStages.Encoded679
import InitECandidate.Proofs.BackendStages.Encoded680
import InitECandidate.Proofs.BackendStages.Encoded681
import InitECandidate.Proofs.BackendStages.Encoded682
import InitECandidate.Proofs.BackendStages.Encoded683
import InitECandidate.Proofs.BackendStages.Encoded684
import InitECandidate.Proofs.BackendStages.Encoded685
import InitECandidate.Proofs.BackendStages.Encoded686
import InitECandidate.Proofs.BackendStages.Encoded687
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages.EncodedChunk672_687
def sections : LabSem.LabProgHOL 64 := [Encoded672, Encoded673, Encoded674, Encoded675, Encoded676, Encoded677, Encoded678, Encoded679, Encoded680, Encoded681, Encoded682, Encoded683, Encoded684, Encoded685, Encoded686, Encoded687]
theorem compiled_eq : FilteredChunk672_687.sections.map (LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length) = sections := by
  change [LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered672, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered673, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered674, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered675, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered676, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered677, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered678, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered679, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered680, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered681, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered682, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered683, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered684, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered685, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered686, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered687] = sections
  rw [Encoded672_eq, Encoded673_eq, Encoded674_eq, Encoded675_eq, Encoded676_eq, Encoded677_eq, Encoded678_eq, Encoded679_eq, Encoded680_eq, Encoded681_eq, Encoded682_eq, Encoded683_eq, Encoded684_eq, Encoded685_eq, Encoded686_eq, Encoded687_eq]
  rfl
#print axioms compiled_eq
end InitECandidate.Proofs.BackendStages.EncodedChunk672_687
