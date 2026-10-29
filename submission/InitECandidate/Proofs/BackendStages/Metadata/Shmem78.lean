import InitECandidate.Proofs.BackendStages.Metadata.Data78
import InitECandidate.Proofs.BackendStages.Padded78
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem walkStep78 : walkShmemLines Padded78.lines 6648 beforeFfis78 beforeShmem78 = (6936, afterFfis78, afterShmem78) := by
  kernel_rfl
theorem shmemStep78 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded78 :: rest) 6648 beforeFfis78 beforeShmem78 = LabToTarget.getShmemInfo rest 6936 afterFfis78 afterShmem78 := by
  rw [getShmemInfo_section, walkStep78]
theorem symbolLength78 : LabToTarget.secLength Padded78.lines 0 = 288 := by
  kernel_rfl
#print axioms shmemStep78
#print axioms symbolLength78
end InitECandidate.Proofs.BackendStages.Metadata
