import InitECandidate.Proofs.BackendStages.Metadata.Data635
import InitECandidate.Proofs.BackendStages.Padded635
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem walkStep635 : walkShmemLines Padded635.lines 531736 beforeFfis635 beforeShmem635 = (531868, afterFfis635, afterShmem635) := by
  kernel_rfl
theorem shmemStep635 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded635 :: rest) 531736 beforeFfis635 beforeShmem635 = LabToTarget.getShmemInfo rest 531868 afterFfis635 afterShmem635 := by
  rw [getShmemInfo_section, walkStep635]
theorem symbolLength635 : LabToTarget.secLength Padded635.lines 0 = 132 := by
  kernel_rfl
#print axioms shmemStep635
#print axioms symbolLength635
end InitECandidate.Proofs.BackendStages.Metadata
