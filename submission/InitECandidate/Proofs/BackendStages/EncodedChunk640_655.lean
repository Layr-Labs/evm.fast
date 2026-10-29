import InitECandidate.Proofs.BackendStages.FilteredChunk640_655
import InitECandidate.Proofs.BackendStages.Encoded640
import InitECandidate.Proofs.BackendStages.Encoded641
import InitECandidate.Proofs.BackendStages.Encoded642
import InitECandidate.Proofs.BackendStages.Encoded643
import InitECandidate.Proofs.BackendStages.Encoded644
import InitECandidate.Proofs.BackendStages.Encoded645
import InitECandidate.Proofs.BackendStages.Encoded646
import InitECandidate.Proofs.BackendStages.Encoded647
import InitECandidate.Proofs.BackendStages.Encoded648
import InitECandidate.Proofs.BackendStages.Encoded649
import InitECandidate.Proofs.BackendStages.Encoded650
import InitECandidate.Proofs.BackendStages.Encoded651
import InitECandidate.Proofs.BackendStages.Encoded652
import InitECandidate.Proofs.BackendStages.Encoded653
import InitECandidate.Proofs.BackendStages.Encoded654
import InitECandidate.Proofs.BackendStages.Encoded655
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages.EncodedChunk640_655
def sections : LabSem.LabProgHOL 64 := [Encoded640, Encoded641, Encoded642, Encoded643, Encoded644, Encoded645, Encoded646, Encoded647, Encoded648, Encoded649, Encoded650, Encoded651, Encoded652, Encoded653, Encoded654, Encoded655]
theorem compiled_eq : FilteredChunk640_655.sections.map (LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length) = sections := by
  change [LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered640, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered641, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered642, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered643, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered644, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered645, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered646, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered647, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered648, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered649, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered650, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered651, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered652, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered653, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered654, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered655] = sections
  rw [Encoded640_eq, Encoded641_eq, Encoded642_eq, Encoded643_eq, Encoded644_eq, Encoded645_eq, Encoded646_eq, Encoded647_eq, Encoded648_eq, Encoded649_eq, Encoded650_eq, Encoded651_eq, Encoded652_eq, Encoded653_eq, Encoded654_eq, Encoded655_eq]
  rfl
#print axioms compiled_eq
end InitECandidate.Proofs.BackendStages.EncodedChunk640_655
