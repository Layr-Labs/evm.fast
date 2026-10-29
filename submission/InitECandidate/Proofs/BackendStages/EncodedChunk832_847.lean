import InitECandidate.Proofs.BackendStages.FilteredChunk832_847
import InitECandidate.Proofs.BackendStages.Encoded832
import InitECandidate.Proofs.BackendStages.Encoded833
import InitECandidate.Proofs.BackendStages.Encoded834
import InitECandidate.Proofs.BackendStages.Encoded835
import InitECandidate.Proofs.BackendStages.Encoded836
import InitECandidate.Proofs.BackendStages.Encoded837
import InitECandidate.Proofs.BackendStages.Encoded838
import InitECandidate.Proofs.BackendStages.Encoded839
import InitECandidate.Proofs.BackendStages.Encoded840
import InitECandidate.Proofs.BackendStages.Encoded841
import InitECandidate.Proofs.BackendStages.Encoded842
import InitECandidate.Proofs.BackendStages.Encoded843
import InitECandidate.Proofs.BackendStages.Encoded844
import InitECandidate.Proofs.BackendStages.Encoded845
import InitECandidate.Proofs.BackendStages.Encoded846
import InitECandidate.Proofs.BackendStages.Encoded847
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages.EncodedChunk832_847
def sections : LabSem.LabProgHOL 64 := [Encoded832, Encoded833, Encoded834, Encoded835, Encoded836, Encoded837, Encoded838, Encoded839, Encoded840, Encoded841, Encoded842, Encoded843, Encoded844, Encoded845, Encoded846, Encoded847]
theorem compiled_eq : FilteredChunk832_847.sections.map (LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length) = sections := by
  change [LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered832, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered833, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered834, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered835, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered836, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered837, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered838, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered839, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered840, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered841, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered842, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered843, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered844, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered845, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered846, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered847] = sections
  rw [Encoded832_eq, Encoded833_eq, Encoded834_eq, Encoded835_eq, Encoded836_eq, Encoded837_eq, Encoded838_eq, Encoded839_eq, Encoded840_eq, Encoded841_eq, Encoded842_eq, Encoded843_eq, Encoded844_eq, Encoded845_eq, Encoded846_eq, Encoded847_eq]
  rfl
#print axioms compiled_eq
end InitECandidate.Proofs.BackendStages.EncodedChunk832_847
