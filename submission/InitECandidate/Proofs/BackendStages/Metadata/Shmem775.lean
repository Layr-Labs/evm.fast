import InitECandidate.Proofs.BackendStages.Metadata.Data775
import InitECandidate.Proofs.BackendStages.Padded775
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem walkStep775 : walkShmemLines Padded775.lines 788092 beforeFfis775 beforeShmem775 = (789256, afterFfis775, afterShmem775) := by
  kernel_rfl
theorem shmemStep775 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded775 :: rest) 788092 beforeFfis775 beforeShmem775 = LabToTarget.getShmemInfo rest 789256 afterFfis775 afterShmem775 := by
  rw [getShmemInfo_section, walkStep775]
theorem symbolLength775 : LabToTarget.secLength Padded775.lines 0 = 1164 := by
  kernel_rfl
#print axioms shmemStep775
#print axioms symbolLength775
end InitECandidate.Proofs.BackendStages.Metadata
