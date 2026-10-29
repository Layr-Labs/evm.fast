import InitECandidate.Proofs.BackendStages.FilteredChunk656_671
import InitECandidate.Proofs.BackendStages.Encoded656
import InitECandidate.Proofs.BackendStages.Encoded657
import InitECandidate.Proofs.BackendStages.Encoded658
import InitECandidate.Proofs.BackendStages.Encoded659
import InitECandidate.Proofs.BackendStages.Encoded660
import InitECandidate.Proofs.BackendStages.Encoded661
import InitECandidate.Proofs.BackendStages.Encoded662
import InitECandidate.Proofs.BackendStages.Encoded663
import InitECandidate.Proofs.BackendStages.Encoded664
import InitECandidate.Proofs.BackendStages.Encoded665
import InitECandidate.Proofs.BackendStages.Encoded666
import InitECandidate.Proofs.BackendStages.Encoded667
import InitECandidate.Proofs.BackendStages.Encoded668
import InitECandidate.Proofs.BackendStages.Encoded669
import InitECandidate.Proofs.BackendStages.Encoded670
import InitECandidate.Proofs.BackendStages.Encoded671
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages.EncodedChunk656_671
def sections : LabSem.LabProgHOL 64 := [Encoded656, Encoded657, Encoded658, Encoded659, Encoded660, Encoded661, Encoded662, Encoded663, Encoded664, Encoded665, Encoded666, Encoded667, Encoded668, Encoded669, Encoded670, Encoded671]
theorem compiled_eq : FilteredChunk656_671.sections.map (LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length) = sections := by
  change [LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered656, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered657, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered658, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered659, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered660, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered661, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered662, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered663, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered664, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered665, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered666, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered667, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered668, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered669, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered670, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered671] = sections
  rw [Encoded656_eq, Encoded657_eq, Encoded658_eq, Encoded659_eq, Encoded660_eq, Encoded661_eq, Encoded662_eq, Encoded663_eq, Encoded664_eq, Encoded665_eq, Encoded666_eq, Encoded667_eq, Encoded668_eq, Encoded669_eq, Encoded670_eq, Encoded671_eq]
  rfl
#print axioms compiled_eq
end InitECandidate.Proofs.BackendStages.EncodedChunk656_671
