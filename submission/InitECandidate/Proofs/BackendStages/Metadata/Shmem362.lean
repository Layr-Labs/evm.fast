import InitECandidate.Proofs.BackendStages.Metadata.Data362
import InitECandidate.Proofs.BackendStages.Padded362
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem walkStep362 : walkShmemLines Padded362.lines 279564 beforeFfis362 beforeShmem362 = (280016, afterFfis362, afterShmem362) := by
  kernel_rfl
theorem shmemStep362 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded362 :: rest) 279564 beforeFfis362 beforeShmem362 = LabToTarget.getShmemInfo rest 280016 afterFfis362 afterShmem362 := by
  rw [getShmemInfo_section, walkStep362]
theorem symbolLength362 : LabToTarget.secLength Padded362.lines 0 = 452 := by
  kernel_rfl
#print axioms shmemStep362
#print axioms symbolLength362
end InitECandidate.Proofs.BackendStages.Metadata
