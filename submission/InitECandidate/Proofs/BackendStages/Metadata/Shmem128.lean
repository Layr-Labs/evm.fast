import InitECandidate.Proofs.BackendStages.Metadata.Data128
import InitECandidate.Proofs.BackendStages.Padded128
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem walkStep128 : walkShmemLines Padded128.lines 21264 beforeFfis128 beforeShmem128 = (22068, afterFfis128, afterShmem128) := by
  kernel_rfl
theorem shmemStep128 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded128 :: rest) 21264 beforeFfis128 beforeShmem128 = LabToTarget.getShmemInfo rest 22068 afterFfis128 afterShmem128 := by
  rw [getShmemInfo_section, walkStep128]
theorem symbolLength128 : LabToTarget.secLength Padded128.lines 0 = 804 := by
  kernel_rfl
#print axioms shmemStep128
#print axioms symbolLength128
end InitECandidate.Proofs.BackendStages.Metadata
