import InitECandidate.Proofs.BackendStages.Metadata.Data183
import InitECandidate.Proofs.BackendStages.Padded183
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem walkStep183 : walkShmemLines Padded183.lines 98488 beforeFfis183 beforeShmem183 = (99208, afterFfis183, afterShmem183) := by
  kernel_rfl
theorem shmemStep183 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded183 :: rest) 98488 beforeFfis183 beforeShmem183 = LabToTarget.getShmemInfo rest 99208 afterFfis183 afterShmem183 := by
  rw [getShmemInfo_section, walkStep183]
theorem symbolLength183 : LabToTarget.secLength Padded183.lines 0 = 720 := by
  kernel_rfl
#print axioms shmemStep183
#print axioms symbolLength183
end InitECandidate.Proofs.BackendStages.Metadata
