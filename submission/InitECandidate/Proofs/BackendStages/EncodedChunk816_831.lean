import InitECandidate.Proofs.BackendStages.FilteredChunk816_831
import InitECandidate.Proofs.BackendStages.Encoded816
import InitECandidate.Proofs.BackendStages.Encoded817
import InitECandidate.Proofs.BackendStages.Encoded818
import InitECandidate.Proofs.BackendStages.Encoded819
import InitECandidate.Proofs.BackendStages.Encoded820
import InitECandidate.Proofs.BackendStages.Encoded821
import InitECandidate.Proofs.BackendStages.Encoded822
import InitECandidate.Proofs.BackendStages.Encoded823
import InitECandidate.Proofs.BackendStages.Encoded824
import InitECandidate.Proofs.BackendStages.Encoded825
import InitECandidate.Proofs.BackendStages.Encoded826
import InitECandidate.Proofs.BackendStages.Encoded827
import InitECandidate.Proofs.BackendStages.Encoded828
import InitECandidate.Proofs.BackendStages.Encoded829
import InitECandidate.Proofs.BackendStages.Encoded830
import InitECandidate.Proofs.BackendStages.Encoded831
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages.EncodedChunk816_831
def sections : LabSem.LabProgHOL 64 := [Encoded816, Encoded817, Encoded818, Encoded819, Encoded820, Encoded821, Encoded822, Encoded823, Encoded824, Encoded825, Encoded826, Encoded827, Encoded828, Encoded829, Encoded830, Encoded831]
theorem compiled_eq : FilteredChunk816_831.sections.map (LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length) = sections := by
  change [LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered816, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered817, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered818, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered819, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered820, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered821, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered822, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered823, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered824, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered825, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered826, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered827, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered828, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered829, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered830, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered831] = sections
  rw [Encoded816_eq, Encoded817_eq, Encoded818_eq, Encoded819_eq, Encoded820_eq, Encoded821_eq, Encoded822_eq, Encoded823_eq, Encoded824_eq, Encoded825_eq, Encoded826_eq, Encoded827_eq, Encoded828_eq, Encoded829_eq, Encoded830_eq, Encoded831_eq]
  rfl
#print axioms compiled_eq
end InitECandidate.Proofs.BackendStages.EncodedChunk816_831
