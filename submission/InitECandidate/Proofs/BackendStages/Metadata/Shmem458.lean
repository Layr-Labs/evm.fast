import InitECandidate.Proofs.BackendStages.Metadata.Data458
import InitECandidate.Proofs.BackendStages.Padded458
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem walkStep458 : walkShmemLines Padded458.lines 341020 beforeFfis458 beforeShmem458 = (341312, afterFfis458, afterShmem458) := by
  kernel_rfl
theorem shmemStep458 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded458 :: rest) 341020 beforeFfis458 beforeShmem458 = LabToTarget.getShmemInfo rest 341312 afterFfis458 afterShmem458 := by
  rw [getShmemInfo_section, walkStep458]
theorem symbolLength458 : LabToTarget.secLength Padded458.lines 0 = 292 := by
  kernel_rfl
#print axioms shmemStep458
#print axioms symbolLength458
end InitECandidate.Proofs.BackendStages.Metadata
