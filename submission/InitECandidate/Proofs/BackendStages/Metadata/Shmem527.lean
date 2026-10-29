import InitECandidate.Proofs.BackendStages.Metadata.Data527
import InitECandidate.Proofs.BackendStages.Padded527
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem walkStep527 : walkShmemLines Padded527.lines 391360 beforeFfis527 beforeShmem527 = (391728, afterFfis527, afterShmem527) := by
  kernel_rfl
theorem shmemStep527 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded527 :: rest) 391360 beforeFfis527 beforeShmem527 = LabToTarget.getShmemInfo rest 391728 afterFfis527 afterShmem527 := by
  rw [getShmemInfo_section, walkStep527]
theorem symbolLength527 : LabToTarget.secLength Padded527.lines 0 = 368 := by
  kernel_rfl
#print axioms shmemStep527
#print axioms symbolLength527
end InitECandidate.Proofs.BackendStages.Metadata
