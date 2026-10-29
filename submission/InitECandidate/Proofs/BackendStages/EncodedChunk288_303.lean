import InitECandidate.Proofs.BackendStages.FilteredChunk288_303
import InitECandidate.Proofs.BackendStages.Encoded288
import InitECandidate.Proofs.BackendStages.Encoded289
import InitECandidate.Proofs.BackendStages.Encoded290
import InitECandidate.Proofs.BackendStages.Encoded291
import InitECandidate.Proofs.BackendStages.Encoded292
import InitECandidate.Proofs.BackendStages.Encoded293
import InitECandidate.Proofs.BackendStages.Encoded294
import InitECandidate.Proofs.BackendStages.Encoded295
import InitECandidate.Proofs.BackendStages.Encoded296
import InitECandidate.Proofs.BackendStages.Encoded297
import InitECandidate.Proofs.BackendStages.Encoded298
import InitECandidate.Proofs.BackendStages.Encoded299
import InitECandidate.Proofs.BackendStages.Encoded300
import InitECandidate.Proofs.BackendStages.Encoded301
import InitECandidate.Proofs.BackendStages.Encoded302
import InitECandidate.Proofs.BackendStages.Encoded303
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages.EncodedChunk288_303
def sections : LabSem.LabProgHOL 64 := [Encoded288, Encoded289, Encoded290, Encoded291, Encoded292, Encoded293, Encoded294, Encoded295, Encoded296, Encoded297, Encoded298, Encoded299, Encoded300, Encoded301, Encoded302, Encoded303]
theorem compiled_eq : FilteredChunk288_303.sections.map (LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length) = sections := by
  change [LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered288, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered289, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered290, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered291, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered292, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered293, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered294, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered295, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered296, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered297, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered298, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered299, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered300, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered301, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered302, LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered303] = sections
  rw [Encoded288_eq, Encoded289_eq, Encoded290_eq, Encoded291_eq, Encoded292_eq, Encoded293_eq, Encoded294_eq, Encoded295_eq, Encoded296_eq, Encoded297_eq, Encoded298_eq, Encoded299_eq, Encoded300_eq, Encoded301_eq, Encoded302_eq, Encoded303_eq]
  rfl
#print axioms compiled_eq
end InitECandidate.Proofs.BackendStages.EncodedChunk288_303
