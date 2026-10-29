import InitECandidate.Proofs.BackendStages.Metadata.Data318
import InitECandidate.Proofs.BackendStages.Padded318
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem walkStep318 : walkShmemLines Padded318.lines 249928 beforeFfis318 beforeShmem318 = (252068, afterFfis318, afterShmem318) := by
  kernel_rfl
theorem shmemStep318 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded318 :: rest) 249928 beforeFfis318 beforeShmem318 = LabToTarget.getShmemInfo rest 252068 afterFfis318 afterShmem318 := by
  rw [getShmemInfo_section, walkStep318]
theorem symbolLength318 : LabToTarget.secLength Padded318.lines 0 = 2140 := by
  kernel_rfl
#print axioms shmemStep318
#print axioms symbolLength318
end InitECandidate.Proofs.BackendStages.Metadata
