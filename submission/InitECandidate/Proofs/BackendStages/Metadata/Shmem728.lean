import InitECandidate.Proofs.BackendStages.Metadata.Data728
import InitECandidate.Proofs.BackendStages.Padded728
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem walkStep728 : walkShmemLines Padded728.lines 732664 beforeFfis728 beforeShmem728 = (733168, afterFfis728, afterShmem728) := by
  kernel_rfl
theorem shmemStep728 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded728 :: rest) 732664 beforeFfis728 beforeShmem728 = LabToTarget.getShmemInfo rest 733168 afterFfis728 afterShmem728 := by
  rw [getShmemInfo_section, walkStep728]
theorem symbolLength728 : LabToTarget.secLength Padded728.lines 0 = 504 := by
  kernel_rfl
#print axioms shmemStep728
#print axioms symbolLength728
end InitECandidate.Proofs.BackendStages.Metadata
