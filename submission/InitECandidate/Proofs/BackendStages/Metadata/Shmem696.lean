import InitECandidate.Proofs.BackendStages.Metadata.Data696
import InitECandidate.Proofs.BackendStages.Padded696
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem walkStep696 : walkShmemLines Padded696.lines 649132 beforeFfis696 beforeShmem696 = (654268, afterFfis696, afterShmem696) := by
  kernel_rfl
theorem shmemStep696 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded696 :: rest) 649132 beforeFfis696 beforeShmem696 = LabToTarget.getShmemInfo rest 654268 afterFfis696 afterShmem696 := by
  rw [getShmemInfo_section, walkStep696]
theorem symbolLength696 : LabToTarget.secLength Padded696.lines 0 = 5136 := by
  kernel_rfl
#print axioms shmemStep696
#print axioms symbolLength696
end InitECandidate.Proofs.BackendStages.Metadata
