import InitECandidate.Proofs.BackendStages.Metadata.Data133
import InitECandidate.Proofs.BackendStages.Padded133
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem walkStep133 : walkShmemLines Padded133.lines 23492 beforeFfis133 beforeShmem133 = (24100, afterFfis133, afterShmem133) := by
  kernel_rfl
theorem shmemStep133 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded133 :: rest) 23492 beforeFfis133 beforeShmem133 = LabToTarget.getShmemInfo rest 24100 afterFfis133 afterShmem133 := by
  rw [getShmemInfo_section, walkStep133]
theorem symbolLength133 : LabToTarget.secLength Padded133.lines 0 = 608 := by
  kernel_rfl
#print axioms shmemStep133
#print axioms symbolLength133
end InitECandidate.Proofs.BackendStages.Metadata
