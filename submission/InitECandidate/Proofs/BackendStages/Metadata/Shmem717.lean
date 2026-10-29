import InitECandidate.Proofs.BackendStages.Metadata.Data717
import InitECandidate.Proofs.BackendStages.Padded717
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem walkStep717 : walkShmemLines Padded717.lines 722900 beforeFfis717 beforeShmem717 = (722928, afterFfis717, afterShmem717) := by
  kernel_rfl
theorem shmemStep717 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded717 :: rest) 722900 beforeFfis717 beforeShmem717 = LabToTarget.getShmemInfo rest 722928 afterFfis717 afterShmem717 := by
  rw [getShmemInfo_section, walkStep717]
theorem symbolLength717 : LabToTarget.secLength Padded717.lines 0 = 28 := by
  kernel_rfl
#print axioms shmemStep717
#print axioms symbolLength717
end InitECandidate.Proofs.BackendStages.Metadata
