import InitECandidate.Proofs.BackendStages.Metadata.Data121
import InitECandidate.Proofs.BackendStages.Padded121
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem walkStep121 : walkShmemLines Padded121.lines 14152 beforeFfis121 beforeShmem121 = (17980, afterFfis121, afterShmem121) := by
  kernel_rfl
theorem shmemStep121 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded121 :: rest) 14152 beforeFfis121 beforeShmem121 = LabToTarget.getShmemInfo rest 17980 afterFfis121 afterShmem121 := by
  rw [getShmemInfo_section, walkStep121]
theorem symbolLength121 : LabToTarget.secLength Padded121.lines 0 = 3828 := by
  kernel_rfl
#print axioms shmemStep121
#print axioms symbolLength121
end InitECandidate.Proofs.BackendStages.Metadata
