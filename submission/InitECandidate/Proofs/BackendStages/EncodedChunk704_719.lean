import InitECandidate.Proofs.BackendStages.FilteredChunk704_719
import InitECandidate.Proofs.BackendStages.Encoded704
import InitECandidate.Proofs.BackendStages.Encoded705
import InitECandidate.Proofs.BackendStages.Encoded706
import InitECandidate.Proofs.BackendStages.Encoded707
import InitECandidate.Proofs.BackendStages.Encoded708
import InitECandidate.Proofs.BackendStages.Encoded709
import InitECandidate.Proofs.BackendStages.Encoded710
import InitECandidate.Proofs.BackendStages.Encoded711
import InitECandidate.Proofs.BackendStages.Encoded712
import InitECandidate.Proofs.BackendStages.Encoded713
import InitECandidate.Proofs.BackendStages.Encoded714
import InitECandidate.Proofs.BackendStages.Encoded715
import InitECandidate.Proofs.BackendStages.Encoded716
import InitECandidate.Proofs.BackendStages.Encoded717
import InitECandidate.Proofs.BackendStages.Encoded718
import InitECandidate.Proofs.BackendStages.Encoded719
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages.EncodedChunk704_719
def sections : LabSem.LabProgHOL 64 := [Encoded704, Encoded705, Encoded706, Encoded707, Encoded708, Encoded709, Encoded710, Encoded711, Encoded712, Encoded713, Encoded714, Encoded715, Encoded716, Encoded717, Encoded718, Encoded719]
theorem compiled_eq : FilteredChunk704_719.sections.map (LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length) = sections := by
  change [LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered704, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered705, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered706, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered707, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered708, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered709, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered710, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered711, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered712, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered713, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered714, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered715, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered716, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered717, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered718, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered719] = sections
  rw [Encoded704_eq, Encoded705_eq, Encoded706_eq, Encoded707_eq, Encoded708_eq, Encoded709_eq, Encoded710_eq, Encoded711_eq, Encoded712_eq, Encoded713_eq, Encoded714_eq, Encoded715_eq, Encoded716_eq, Encoded717_eq, Encoded718_eq, Encoded719_eq]
  rfl
#print axioms compiled_eq
end InitECandidate.Proofs.BackendStages.EncodedChunk704_719
