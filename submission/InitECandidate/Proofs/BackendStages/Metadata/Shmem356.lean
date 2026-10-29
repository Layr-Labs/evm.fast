import InitECandidate.Proofs.BackendStages.Metadata.Data356
import InitECandidate.Proofs.BackendStages.Padded356
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem walkStep356 : walkShmemLines Padded356.lines 276580 beforeFfis356 beforeShmem356 = (276592, afterFfis356, afterShmem356) := by
  kernel_rfl
theorem shmemStep356 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded356 :: rest) 276580 beforeFfis356 beforeShmem356 = LabToTarget.getShmemInfo rest 276592 afterFfis356 afterShmem356 := by
  rw [getShmemInfo_section, walkStep356]
theorem symbolLength356 : LabToTarget.secLength Padded356.lines 0 = 12 := by
  kernel_rfl
#print axioms shmemStep356
#print axioms symbolLength356
end InitECandidate.Proofs.BackendStages.Metadata
