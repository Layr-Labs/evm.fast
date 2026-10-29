import InitECandidate.Proofs.BackendStages.Metadata.Data772
import InitECandidate.Proofs.BackendStages.Padded772
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem walkStep772 : walkShmemLines Padded772.lines 784500 beforeFfis772 beforeShmem772 = (786108, afterFfis772, afterShmem772) := by
  kernel_rfl
theorem shmemStep772 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded772 :: rest) 784500 beforeFfis772 beforeShmem772 = LabToTarget.getShmemInfo rest 786108 afterFfis772 afterShmem772 := by
  rw [getShmemInfo_section, walkStep772]
theorem symbolLength772 : LabToTarget.secLength Padded772.lines 0 = 1608 := by
  kernel_rfl
#print axioms shmemStep772
#print axioms symbolLength772
end InitECandidate.Proofs.BackendStages.Metadata
