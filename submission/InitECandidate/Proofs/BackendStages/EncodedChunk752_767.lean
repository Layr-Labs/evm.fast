import InitECandidate.Proofs.BackendStages.FilteredChunk752_767
import InitECandidate.Proofs.BackendStages.Encoded752
import InitECandidate.Proofs.BackendStages.Encoded753
import InitECandidate.Proofs.BackendStages.Encoded754
import InitECandidate.Proofs.BackendStages.Encoded755
import InitECandidate.Proofs.BackendStages.Encoded756
import InitECandidate.Proofs.BackendStages.Encoded757
import InitECandidate.Proofs.BackendStages.Encoded758
import InitECandidate.Proofs.BackendStages.Encoded759
import InitECandidate.Proofs.BackendStages.Encoded760
import InitECandidate.Proofs.BackendStages.Encoded761
import InitECandidate.Proofs.BackendStages.Encoded762
import InitECandidate.Proofs.BackendStages.Encoded763
import InitECandidate.Proofs.BackendStages.Encoded764
import InitECandidate.Proofs.BackendStages.Encoded765
import InitECandidate.Proofs.BackendStages.Encoded766
import InitECandidate.Proofs.BackendStages.Encoded767
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages.EncodedChunk752_767
def sections : LabSem.LabProgHOL 64 := [Encoded752, Encoded753, Encoded754, Encoded755, Encoded756, Encoded757, Encoded758, Encoded759, Encoded760, Encoded761, Encoded762, Encoded763, Encoded764, Encoded765, Encoded766, Encoded767]
theorem compiled_eq : FilteredChunk752_767.sections.map (LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length) = sections := by
  change [LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered752, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered753, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered754, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered755, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered756, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered757, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered758, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered759, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered760, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered761, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered762, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered763, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered764, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered765, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered766, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered767] = sections
  rw [Encoded752_eq, Encoded753_eq, Encoded754_eq, Encoded755_eq, Encoded756_eq, Encoded757_eq, Encoded758_eq, Encoded759_eq, Encoded760_eq, Encoded761_eq, Encoded762_eq, Encoded763_eq, Encoded764_eq, Encoded765_eq, Encoded766_eq, Encoded767_eq]
  rfl
#print axioms compiled_eq
end InitECandidate.Proofs.BackendStages.EncodedChunk752_767
