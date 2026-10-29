import InitECandidate.Proofs.BackendStages.Metadata.Data679
import InitECandidate.Proofs.BackendStages.Padded679
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem walkStep679 : walkShmemLines Padded679.lines 604376 beforeFfis679 beforeShmem679 = (604656, afterFfis679, afterShmem679) := by
  kernel_rfl
theorem shmemStep679 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded679 :: rest) 604376 beforeFfis679 beforeShmem679 = LabToTarget.getShmemInfo rest 604656 afterFfis679 afterShmem679 := by
  rw [getShmemInfo_section, walkStep679]
theorem symbolLength679 : LabToTarget.secLength Padded679.lines 0 = 280 := by
  kernel_rfl
#print axioms shmemStep679
#print axioms symbolLength679
end InitECandidate.Proofs.BackendStages.Metadata
