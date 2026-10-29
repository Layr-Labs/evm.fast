import InitECandidate.Proofs.BackendStages.Metadata.Data209
import InitECandidate.Proofs.BackendStages.Padded209
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem walkStep209 : walkShmemLines Padded209.lines 119448 beforeFfis209 beforeShmem209 = (119488, afterFfis209, afterShmem209) := by
  kernel_rfl
theorem shmemStep209 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded209 :: rest) 119448 beforeFfis209 beforeShmem209 = LabToTarget.getShmemInfo rest 119488 afterFfis209 afterShmem209 := by
  rw [getShmemInfo_section, walkStep209]
theorem symbolLength209 : LabToTarget.secLength Padded209.lines 0 = 40 := by
  kernel_rfl
#print axioms shmemStep209
#print axioms symbolLength209
end InitECandidate.Proofs.BackendStages.Metadata
