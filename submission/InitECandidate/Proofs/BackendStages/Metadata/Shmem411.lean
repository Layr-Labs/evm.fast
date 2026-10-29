import InitECandidate.Proofs.BackendStages.Metadata.Data411
import InitECandidate.Proofs.BackendStages.Padded411
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem walkStep411 : walkShmemLines Padded411.lines 309668 beforeFfis411 beforeShmem411 = (310336, afterFfis411, afterShmem411) := by
  kernel_rfl
theorem shmemStep411 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded411 :: rest) 309668 beforeFfis411 beforeShmem411 = LabToTarget.getShmemInfo rest 310336 afterFfis411 afterShmem411 := by
  rw [getShmemInfo_section, walkStep411]
theorem symbolLength411 : LabToTarget.secLength Padded411.lines 0 = 668 := by
  kernel_rfl
#print axioms shmemStep411
#print axioms symbolLength411
end InitECandidate.Proofs.BackendStages.Metadata
