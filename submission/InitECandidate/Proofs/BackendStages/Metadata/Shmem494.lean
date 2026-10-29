import InitECandidate.Proofs.BackendStages.Metadata.Data494
import InitECandidate.Proofs.BackendStages.Padded494
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem walkStep494 : walkShmemLines Padded494.lines 366928 beforeFfis494 beforeShmem494 = (367096, afterFfis494, afterShmem494) := by
  kernel_rfl
theorem shmemStep494 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded494 :: rest) 366928 beforeFfis494 beforeShmem494 = LabToTarget.getShmemInfo rest 367096 afterFfis494 afterShmem494 := by
  rw [getShmemInfo_section, walkStep494]
theorem symbolLength494 : LabToTarget.secLength Padded494.lines 0 = 168 := by
  kernel_rfl
#print axioms shmemStep494
#print axioms symbolLength494
end InitECandidate.Proofs.BackendStages.Metadata
