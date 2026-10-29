import InitECandidate.Proofs.BackendStages.Metadata.Data278
import InitECandidate.Proofs.BackendStages.Padded278
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem walkStep278 : walkShmemLines Padded278.lines 218508 beforeFfis278 beforeShmem278 = (219576, afterFfis278, afterShmem278) := by
  kernel_rfl
theorem shmemStep278 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded278 :: rest) 218508 beforeFfis278 beforeShmem278 = LabToTarget.getShmemInfo rest 219576 afterFfis278 afterShmem278 := by
  rw [getShmemInfo_section, walkStep278]
theorem symbolLength278 : LabToTarget.secLength Padded278.lines 0 = 1068 := by
  kernel_rfl
#print axioms shmemStep278
#print axioms symbolLength278
end InitECandidate.Proofs.BackendStages.Metadata
