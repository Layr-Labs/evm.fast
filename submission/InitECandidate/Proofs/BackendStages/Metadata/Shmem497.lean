import InitECandidate.Proofs.BackendStages.Metadata.Data497
import InitECandidate.Proofs.BackendStages.Padded497
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem walkStep497 : walkShmemLines Padded497.lines 367420 beforeFfis497 beforeShmem497 = (368184, afterFfis497, afterShmem497) := by
  kernel_rfl
theorem shmemStep497 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded497 :: rest) 367420 beforeFfis497 beforeShmem497 = LabToTarget.getShmemInfo rest 368184 afterFfis497 afterShmem497 := by
  rw [getShmemInfo_section, walkStep497]
theorem symbolLength497 : LabToTarget.secLength Padded497.lines 0 = 764 := by
  kernel_rfl
#print axioms shmemStep497
#print axioms symbolLength497
end InitECandidate.Proofs.BackendStages.Metadata
