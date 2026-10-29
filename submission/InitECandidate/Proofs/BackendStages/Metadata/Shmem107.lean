import InitECandidate.Proofs.BackendStages.Metadata.Data107
import InitECandidate.Proofs.BackendStages.Padded107
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem walkStep107 : walkShmemLines Padded107.lines 11156 beforeFfis107 beforeShmem107 = (11208, afterFfis107, afterShmem107) := by
  kernel_rfl
theorem shmemStep107 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded107 :: rest) 11156 beforeFfis107 beforeShmem107 = LabToTarget.getShmemInfo rest 11208 afterFfis107 afterShmem107 := by
  rw [getShmemInfo_section, walkStep107]
theorem symbolLength107 : LabToTarget.secLength Padded107.lines 0 = 52 := by
  kernel_rfl
#print axioms shmemStep107
#print axioms symbolLength107
end InitECandidate.Proofs.BackendStages.Metadata
