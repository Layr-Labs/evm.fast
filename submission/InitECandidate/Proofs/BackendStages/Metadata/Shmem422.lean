import InitECandidate.Proofs.BackendStages.Metadata.Data422
import InitECandidate.Proofs.BackendStages.Padded422
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem walkStep422 : walkShmemLines Padded422.lines 314864 beforeFfis422 beforeShmem422 = (315124, afterFfis422, afterShmem422) := by
  kernel_rfl
theorem shmemStep422 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded422 :: rest) 314864 beforeFfis422 beforeShmem422 = LabToTarget.getShmemInfo rest 315124 afterFfis422 afterShmem422 := by
  rw [getShmemInfo_section, walkStep422]
theorem symbolLength422 : LabToTarget.secLength Padded422.lines 0 = 260 := by
  kernel_rfl
#print axioms shmemStep422
#print axioms symbolLength422
end InitECandidate.Proofs.BackendStages.Metadata
