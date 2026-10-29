import InitECandidate.Proofs.BackendStages.Metadata.Data573
import InitECandidate.Proofs.BackendStages.Padded573
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem walkStep573 : walkShmemLines Padded573.lines 429156 beforeFfis573 beforeShmem573 = (429624, afterFfis573, afterShmem573) := by
  kernel_rfl
theorem shmemStep573 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded573 :: rest) 429156 beforeFfis573 beforeShmem573 = LabToTarget.getShmemInfo rest 429624 afterFfis573 afterShmem573 := by
  rw [getShmemInfo_section, walkStep573]
theorem symbolLength573 : LabToTarget.secLength Padded573.lines 0 = 468 := by
  kernel_rfl
#print axioms shmemStep573
#print axioms symbolLength573
end InitECandidate.Proofs.BackendStages.Metadata
