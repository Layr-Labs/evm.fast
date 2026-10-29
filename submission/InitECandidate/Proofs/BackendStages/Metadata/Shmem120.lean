import InitECandidate.Proofs.BackendStages.Metadata.Data120
import InitECandidate.Proofs.BackendStages.Padded120
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem walkStep120 : walkShmemLines Padded120.lines 12564 beforeFfis120 beforeShmem120 = (14152, afterFfis120, afterShmem120) := by
  kernel_rfl
theorem shmemStep120 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded120 :: rest) 12564 beforeFfis120 beforeShmem120 = LabToTarget.getShmemInfo rest 14152 afterFfis120 afterShmem120 := by
  rw [getShmemInfo_section, walkStep120]
theorem symbolLength120 : LabToTarget.secLength Padded120.lines 0 = 1588 := by
  kernel_rfl
#print axioms shmemStep120
#print axioms symbolLength120
end InitECandidate.Proofs.BackendStages.Metadata
