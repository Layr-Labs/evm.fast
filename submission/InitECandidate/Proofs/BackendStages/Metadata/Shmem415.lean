import InitECandidate.Proofs.BackendStages.Metadata.Data415
import InitECandidate.Proofs.BackendStages.Padded415
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem walkStep415 : walkShmemLines Padded415.lines 311456 beforeFfis415 beforeShmem415 = (311936, afterFfis415, afterShmem415) := by
  kernel_rfl
theorem shmemStep415 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded415 :: rest) 311456 beforeFfis415 beforeShmem415 = LabToTarget.getShmemInfo rest 311936 afterFfis415 afterShmem415 := by
  rw [getShmemInfo_section, walkStep415]
theorem symbolLength415 : LabToTarget.secLength Padded415.lines 0 = 480 := by
  kernel_rfl
#print axioms shmemStep415
#print axioms symbolLength415
end InitECandidate.Proofs.BackendStages.Metadata
