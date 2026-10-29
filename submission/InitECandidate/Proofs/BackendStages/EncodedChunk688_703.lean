import InitECandidate.Proofs.BackendStages.FilteredChunk688_703
import InitECandidate.Proofs.BackendStages.Encoded688
import InitECandidate.Proofs.BackendStages.Encoded689
import InitECandidate.Proofs.BackendStages.Encoded690
import InitECandidate.Proofs.BackendStages.Encoded691
import InitECandidate.Proofs.BackendStages.Encoded692
import InitECandidate.Proofs.BackendStages.Encoded693
import InitECandidate.Proofs.BackendStages.Encoded694
import InitECandidate.Proofs.BackendStages.Encoded695
import InitECandidate.Proofs.BackendStages.Encoded696
import InitECandidate.Proofs.BackendStages.Encoded697
import InitECandidate.Proofs.BackendStages.Encoded698
import InitECandidate.Proofs.BackendStages.Encoded699
import InitECandidate.Proofs.BackendStages.Encoded700
import InitECandidate.Proofs.BackendStages.Encoded701
import InitECandidate.Proofs.BackendStages.Encoded702
import InitECandidate.Proofs.BackendStages.Encoded703
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages.EncodedChunk688_703
def sections : LabSem.LabProgHOL 64 := [Encoded688, Encoded689, Encoded690, Encoded691, Encoded692, Encoded693, Encoded694, Encoded695, Encoded696, Encoded697, Encoded698, Encoded699, Encoded700, Encoded701, Encoded702, Encoded703]
theorem compiled_eq : FilteredChunk688_703.sections.map (LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length) = sections := by
  change [LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered688, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered689, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered690, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered691, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered692, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered693, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered694, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered695, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered696, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered697, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered698, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered699, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered700, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered701, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered702, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered703] = sections
  rw [Encoded688_eq, Encoded689_eq, Encoded690_eq, Encoded691_eq, Encoded692_eq, Encoded693_eq, Encoded694_eq, Encoded695_eq, Encoded696_eq, Encoded697_eq, Encoded698_eq, Encoded699_eq, Encoded700_eq, Encoded701_eq, Encoded702_eq, Encoded703_eq]
  rfl
#print axioms compiled_eq
end InitECandidate.Proofs.BackendStages.EncodedChunk688_703
