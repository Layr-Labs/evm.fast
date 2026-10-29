import InitECandidate.Proofs.BackendStages.Metadata.Data626
import InitECandidate.Proofs.BackendStages.Padded626
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem walkStep626 : walkShmemLines Padded626.lines 522712 beforeFfis626 beforeShmem626 = (524032, afterFfis626, afterShmem626) := by
  kernel_rfl
theorem shmemStep626 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded626 :: rest) 522712 beforeFfis626 beforeShmem626 = LabToTarget.getShmemInfo rest 524032 afterFfis626 afterShmem626 := by
  rw [getShmemInfo_section, walkStep626]
theorem symbolLength626 : LabToTarget.secLength Padded626.lines 0 = 1320 := by
  kernel_rfl
#print axioms shmemStep626
#print axioms symbolLength626
end InitECandidate.Proofs.BackendStages.Metadata
