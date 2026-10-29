import InitECandidate.Proofs.BackendStages.Metadata.Data561
import InitECandidate.Proofs.BackendStages.Padded561
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem walkStep561 : walkShmemLines Padded561.lines 419920 beforeFfis561 beforeShmem561 = (420092, afterFfis561, afterShmem561) := by
  kernel_rfl
theorem shmemStep561 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded561 :: rest) 419920 beforeFfis561 beforeShmem561 = LabToTarget.getShmemInfo rest 420092 afterFfis561 afterShmem561 := by
  rw [getShmemInfo_section, walkStep561]
theorem symbolLength561 : LabToTarget.secLength Padded561.lines 0 = 172 := by
  kernel_rfl
#print axioms shmemStep561
#print axioms symbolLength561
end InitECandidate.Proofs.BackendStages.Metadata
