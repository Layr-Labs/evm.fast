import InitECandidate.Proofs.BackendStages.Metadata.Data595
import InitECandidate.Proofs.BackendStages.Padded595
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem walkStep595 : walkShmemLines Padded595.lines 456424 beforeFfis595 beforeShmem595 = (468856, afterFfis595, afterShmem595) := by
  kernel_rfl
theorem shmemStep595 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded595 :: rest) 456424 beforeFfis595 beforeShmem595 = LabToTarget.getShmemInfo rest 468856 afterFfis595 afterShmem595 := by
  rw [getShmemInfo_section, walkStep595]
theorem symbolLength595 : LabToTarget.secLength Padded595.lines 0 = 12432 := by
  kernel_rfl
#print axioms shmemStep595
#print axioms symbolLength595
end InitECandidate.Proofs.BackendStages.Metadata
