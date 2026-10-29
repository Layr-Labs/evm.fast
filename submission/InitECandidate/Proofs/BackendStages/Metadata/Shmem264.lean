import InitECandidate.Proofs.BackendStages.Metadata.Data264
import InitECandidate.Proofs.BackendStages.Padded264
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem walkStep264 : walkShmemLines Padded264.lines 202820 beforeFfis264 beforeShmem264 = (203580, afterFfis264, afterShmem264) := by
  kernel_rfl
theorem shmemStep264 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded264 :: rest) 202820 beforeFfis264 beforeShmem264 = LabToTarget.getShmemInfo rest 203580 afterFfis264 afterShmem264 := by
  rw [getShmemInfo_section, walkStep264]
theorem symbolLength264 : LabToTarget.secLength Padded264.lines 0 = 760 := by
  kernel_rfl
#print axioms shmemStep264
#print axioms symbolLength264
end InitECandidate.Proofs.BackendStages.Metadata
