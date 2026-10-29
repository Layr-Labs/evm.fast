import InitECandidate.Proofs.BackendStages.Metadata.Data135
import InitECandidate.Proofs.BackendStages.Padded135
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem walkStep135 : walkShmemLines Padded135.lines 24708 beforeFfis135 beforeShmem135 = (25228, afterFfis135, afterShmem135) := by
  kernel_rfl
theorem shmemStep135 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded135 :: rest) 24708 beforeFfis135 beforeShmem135 = LabToTarget.getShmemInfo rest 25228 afterFfis135 afterShmem135 := by
  rw [getShmemInfo_section, walkStep135]
theorem symbolLength135 : LabToTarget.secLength Padded135.lines 0 = 520 := by
  kernel_rfl
#print axioms shmemStep135
#print axioms symbolLength135
end InitECandidate.Proofs.BackendStages.Metadata
