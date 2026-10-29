import InitECandidate.Proofs.BackendStages.FilteredChunk736_751
import InitECandidate.Proofs.BackendStages.Encoded736
import InitECandidate.Proofs.BackendStages.Encoded737
import InitECandidate.Proofs.BackendStages.Encoded738
import InitECandidate.Proofs.BackendStages.Encoded739
import InitECandidate.Proofs.BackendStages.Encoded740
import InitECandidate.Proofs.BackendStages.Encoded741
import InitECandidate.Proofs.BackendStages.Encoded742
import InitECandidate.Proofs.BackendStages.Encoded743
import InitECandidate.Proofs.BackendStages.Encoded744
import InitECandidate.Proofs.BackendStages.Encoded745
import InitECandidate.Proofs.BackendStages.Encoded746
import InitECandidate.Proofs.BackendStages.Encoded747
import InitECandidate.Proofs.BackendStages.Encoded748
import InitECandidate.Proofs.BackendStages.Encoded749
import InitECandidate.Proofs.BackendStages.Encoded750
import InitECandidate.Proofs.BackendStages.Encoded751
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages.EncodedChunk736_751
def sections : LabSem.LabProgHOL 64 := [Encoded736, Encoded737, Encoded738, Encoded739, Encoded740, Encoded741, Encoded742, Encoded743, Encoded744, Encoded745, Encoded746, Encoded747, Encoded748, Encoded749, Encoded750, Encoded751]
theorem compiled_eq : FilteredChunk736_751.sections.map (LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length) = sections := by
  change [LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered736, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered737, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered738, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered739, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered740, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered741, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered742, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered743, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered744, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered745, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered746, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered747, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered748, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered749, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered750, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered751] = sections
  rw [Encoded736_eq, Encoded737_eq, Encoded738_eq, Encoded739_eq, Encoded740_eq, Encoded741_eq, Encoded742_eq, Encoded743_eq, Encoded744_eq, Encoded745_eq, Encoded746_eq, Encoded747_eq, Encoded748_eq, Encoded749_eq, Encoded750_eq, Encoded751_eq]
  rfl
#print axioms compiled_eq
end InitECandidate.Proofs.BackendStages.EncodedChunk736_751
