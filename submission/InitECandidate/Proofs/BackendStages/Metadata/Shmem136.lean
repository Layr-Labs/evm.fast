import InitECandidate.Proofs.BackendStages.Metadata.Data136
import InitECandidate.Proofs.BackendStages.Padded136
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem walkStep136 : walkShmemLines Padded136.lines 25228 beforeFfis136 beforeShmem136 = (26312, afterFfis136, afterShmem136) := by
  kernel_rfl
theorem shmemStep136 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded136 :: rest) 25228 beforeFfis136 beforeShmem136 = LabToTarget.getShmemInfo rest 26312 afterFfis136 afterShmem136 := by
  rw [getShmemInfo_section, walkStep136]
theorem symbolLength136 : LabToTarget.secLength Padded136.lines 0 = 1084 := by
  kernel_rfl
#print axioms shmemStep136
#print axioms symbolLength136
end InitECandidate.Proofs.BackendStages.Metadata
