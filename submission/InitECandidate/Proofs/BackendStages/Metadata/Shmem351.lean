import InitECandidate.Proofs.BackendStages.Metadata.Data351
import InitECandidate.Proofs.BackendStages.Padded351
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem walkStep351 : walkShmemLines Padded351.lines 276480 beforeFfis351 beforeShmem351 = (276496, afterFfis351, afterShmem351) := by
  kernel_rfl
theorem shmemStep351 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded351 :: rest) 276480 beforeFfis351 beforeShmem351 = LabToTarget.getShmemInfo rest 276496 afterFfis351 afterShmem351 := by
  rw [getShmemInfo_section, walkStep351]
theorem symbolLength351 : LabToTarget.secLength Padded351.lines 0 = 16 := by
  kernel_rfl
#print axioms shmemStep351
#print axioms symbolLength351
end InitECandidate.Proofs.BackendStages.Metadata
