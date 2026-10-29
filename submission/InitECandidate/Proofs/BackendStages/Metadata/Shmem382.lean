import InitECandidate.Proofs.BackendStages.Metadata.Data382
import InitECandidate.Proofs.BackendStages.Padded382
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem walkStep382 : walkShmemLines Padded382.lines 293376 beforeFfis382 beforeShmem382 = (294060, afterFfis382, afterShmem382) := by
  kernel_rfl
theorem shmemStep382 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded382 :: rest) 293376 beforeFfis382 beforeShmem382 = LabToTarget.getShmemInfo rest 294060 afterFfis382 afterShmem382 := by
  rw [getShmemInfo_section, walkStep382]
theorem symbolLength382 : LabToTarget.secLength Padded382.lines 0 = 684 := by
  kernel_rfl
#print axioms shmemStep382
#print axioms symbolLength382
end InitECandidate.Proofs.BackendStages.Metadata
