import InitECandidate.Proofs.BackendStages.Metadata.Data652
import InitECandidate.Proofs.BackendStages.Padded652
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem walkStep652 : walkShmemLines Padded652.lines 566704 beforeFfis652 beforeShmem652 = (569676, afterFfis652, afterShmem652) := by
  kernel_rfl
theorem shmemStep652 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded652 :: rest) 566704 beforeFfis652 beforeShmem652 = LabToTarget.getShmemInfo rest 569676 afterFfis652 afterShmem652 := by
  rw [getShmemInfo_section, walkStep652]
theorem symbolLength652 : LabToTarget.secLength Padded652.lines 0 = 2972 := by
  kernel_rfl
#print axioms shmemStep652
#print axioms symbolLength652
end InitECandidate.Proofs.BackendStages.Metadata
