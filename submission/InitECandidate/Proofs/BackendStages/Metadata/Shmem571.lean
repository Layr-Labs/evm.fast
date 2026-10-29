import InitECandidate.Proofs.BackendStages.Metadata.Data571
import InitECandidate.Proofs.BackendStages.Padded571
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem walkStep571 : walkShmemLines Padded571.lines 428636 beforeFfis571 beforeShmem571 = (429128, afterFfis571, afterShmem571) := by
  kernel_rfl
theorem shmemStep571 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded571 :: rest) 428636 beforeFfis571 beforeShmem571 = LabToTarget.getShmemInfo rest 429128 afterFfis571 afterShmem571 := by
  rw [getShmemInfo_section, walkStep571]
theorem symbolLength571 : LabToTarget.secLength Padded571.lines 0 = 492 := by
  kernel_rfl
#print axioms shmemStep571
#print axioms symbolLength571
end InitECandidate.Proofs.BackendStages.Metadata
