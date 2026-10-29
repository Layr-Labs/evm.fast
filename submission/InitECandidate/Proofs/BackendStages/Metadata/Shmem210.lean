import InitECandidate.Proofs.BackendStages.Metadata.Data210
import InitECandidate.Proofs.BackendStages.Padded210
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem walkStep210 : walkShmemLines Padded210.lines 119488 beforeFfis210 beforeShmem210 = (122984, afterFfis210, afterShmem210) := by
  kernel_rfl
theorem shmemStep210 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded210 :: rest) 119488 beforeFfis210 beforeShmem210 = LabToTarget.getShmemInfo rest 122984 afterFfis210 afterShmem210 := by
  rw [getShmemInfo_section, walkStep210]
theorem symbolLength210 : LabToTarget.secLength Padded210.lines 0 = 3496 := by
  kernel_rfl
#print axioms shmemStep210
#print axioms symbolLength210
end InitECandidate.Proofs.BackendStages.Metadata
