import InitECandidate.Proofs.BackendStages.Metadata.Data551
import InitECandidate.Proofs.BackendStages.Padded551
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem walkStep551 : walkShmemLines Padded551.lines 411736 beforeFfis551 beforeShmem551 = (412500, afterFfis551, afterShmem551) := by
  kernel_rfl
theorem shmemStep551 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded551 :: rest) 411736 beforeFfis551 beforeShmem551 = LabToTarget.getShmemInfo rest 412500 afterFfis551 afterShmem551 := by
  rw [getShmemInfo_section, walkStep551]
theorem symbolLength551 : LabToTarget.secLength Padded551.lines 0 = 764 := by
  kernel_rfl
#print axioms shmemStep551
#print axioms symbolLength551
end InitECandidate.Proofs.BackendStages.Metadata
