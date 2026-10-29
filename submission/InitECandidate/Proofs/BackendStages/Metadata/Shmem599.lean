import InitECandidate.Proofs.BackendStages.Metadata.Data599
import InitECandidate.Proofs.BackendStages.Padded599
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem walkStep599 : walkShmemLines Padded599.lines 470748 beforeFfis599 beforeShmem599 = (471072, afterFfis599, afterShmem599) := by
  kernel_rfl
theorem shmemStep599 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded599 :: rest) 470748 beforeFfis599 beforeShmem599 = LabToTarget.getShmemInfo rest 471072 afterFfis599 afterShmem599 := by
  rw [getShmemInfo_section, walkStep599]
theorem symbolLength599 : LabToTarget.secLength Padded599.lines 0 = 324 := by
  kernel_rfl
#print axioms shmemStep599
#print axioms symbolLength599
end InitECandidate.Proofs.BackendStages.Metadata
