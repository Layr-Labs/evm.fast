import InitECandidate.Proofs.BackendStages.Metadata.Data568
import InitECandidate.Proofs.BackendStages.Padded568
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem walkStep568 : walkShmemLines Padded568.lines 424876 beforeFfis568 beforeShmem568 = (425244, afterFfis568, afterShmem568) := by
  kernel_rfl
theorem shmemStep568 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded568 :: rest) 424876 beforeFfis568 beforeShmem568 = LabToTarget.getShmemInfo rest 425244 afterFfis568 afterShmem568 := by
  rw [getShmemInfo_section, walkStep568]
theorem symbolLength568 : LabToTarget.secLength Padded568.lines 0 = 368 := by
  kernel_rfl
#print axioms shmemStep568
#print axioms symbolLength568
end InitECandidate.Proofs.BackendStages.Metadata
