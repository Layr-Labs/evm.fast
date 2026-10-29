import InitECandidate.Proofs.BackendStages.Metadata.Data605
import InitECandidate.Proofs.BackendStages.Padded605
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem walkStep605 : walkShmemLines Padded605.lines 477832 beforeFfis605 beforeShmem605 = (478316, afterFfis605, afterShmem605) := by
  kernel_rfl
theorem shmemStep605 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded605 :: rest) 477832 beforeFfis605 beforeShmem605 = LabToTarget.getShmemInfo rest 478316 afterFfis605 afterShmem605 := by
  rw [getShmemInfo_section, walkStep605]
theorem symbolLength605 : LabToTarget.secLength Padded605.lines 0 = 484 := by
  kernel_rfl
#print axioms shmemStep605
#print axioms symbolLength605
end InitECandidate.Proofs.BackendStages.Metadata
