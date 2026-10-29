import InitECandidate.Proofs.BackendStages.Metadata.Data372
import InitECandidate.Proofs.BackendStages.Padded372
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem walkStep372 : walkShmemLines Padded372.lines 287144 beforeFfis372 beforeShmem372 = (287160, afterFfis372, afterShmem372) := by
  kernel_rfl
theorem shmemStep372 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded372 :: rest) 287144 beforeFfis372 beforeShmem372 = LabToTarget.getShmemInfo rest 287160 afterFfis372 afterShmem372 := by
  rw [getShmemInfo_section, walkStep372]
theorem symbolLength372 : LabToTarget.secLength Padded372.lines 0 = 16 := by
  kernel_rfl
#print axioms shmemStep372
#print axioms symbolLength372
end InitECandidate.Proofs.BackendStages.Metadata
