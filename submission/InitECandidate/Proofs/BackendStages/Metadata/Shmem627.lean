import InitECandidate.Proofs.BackendStages.Metadata.Data627
import InitECandidate.Proofs.BackendStages.Padded627
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem walkStep627 : walkShmemLines Padded627.lines 524032 beforeFfis627 beforeShmem627 = (524296, afterFfis627, afterShmem627) := by
  kernel_rfl
theorem shmemStep627 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded627 :: rest) 524032 beforeFfis627 beforeShmem627 = LabToTarget.getShmemInfo rest 524296 afterFfis627 afterShmem627 := by
  rw [getShmemInfo_section, walkStep627]
theorem symbolLength627 : LabToTarget.secLength Padded627.lines 0 = 264 := by
  kernel_rfl
#print axioms shmemStep627
#print axioms symbolLength627
end InitECandidate.Proofs.BackendStages.Metadata
