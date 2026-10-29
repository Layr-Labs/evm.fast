import InitECandidate.Proofs.BackendStages.Metadata.Data450
import InitECandidate.Proofs.BackendStages.Padded450
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem walkStep450 : walkShmemLines Padded450.lines 330944 beforeFfis450 beforeShmem450 = (332544, afterFfis450, afterShmem450) := by
  kernel_rfl
theorem shmemStep450 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded450 :: rest) 330944 beforeFfis450 beforeShmem450 = LabToTarget.getShmemInfo rest 332544 afterFfis450 afterShmem450 := by
  rw [getShmemInfo_section, walkStep450]
theorem symbolLength450 : LabToTarget.secLength Padded450.lines 0 = 1600 := by
  kernel_rfl
#print axioms shmemStep450
#print axioms symbolLength450
end InitECandidate.Proofs.BackendStages.Metadata
