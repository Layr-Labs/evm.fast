import InitECandidate.Proofs.BackendStages.Metadata.Data593
import InitECandidate.Proofs.BackendStages.Padded593
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem walkStep593 : walkShmemLines Padded593.lines 449304 beforeFfis593 beforeShmem593 = (454216, afterFfis593, afterShmem593) := by
  kernel_rfl
theorem shmemStep593 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded593 :: rest) 449304 beforeFfis593 beforeShmem593 = LabToTarget.getShmemInfo rest 454216 afterFfis593 afterShmem593 := by
  rw [getShmemInfo_section, walkStep593]
theorem symbolLength593 : LabToTarget.secLength Padded593.lines 0 = 4912 := by
  kernel_rfl
#print axioms shmemStep593
#print axioms symbolLength593
end InitECandidate.Proofs.BackendStages.Metadata
