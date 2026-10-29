import InitECandidate.Proofs.BackendStages.Metadata.Data346
import InitECandidate.Proofs.BackendStages.Padded346
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem walkStep346 : walkShmemLines Padded346.lines 276248 beforeFfis346 beforeShmem346 = (276416, afterFfis346, afterShmem346) := by
  kernel_rfl
theorem shmemStep346 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded346 :: rest) 276248 beforeFfis346 beforeShmem346 = LabToTarget.getShmemInfo rest 276416 afterFfis346 afterShmem346 := by
  rw [getShmemInfo_section, walkStep346]
theorem symbolLength346 : LabToTarget.secLength Padded346.lines 0 = 168 := by
  kernel_rfl
#print axioms shmemStep346
#print axioms symbolLength346
end InitECandidate.Proofs.BackendStages.Metadata
