import InitECandidate.Proofs.BackendStages.Metadata.Data75
import InitECandidate.Proofs.BackendStages.Padded75
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem walkStep75 : walkShmemLines Padded75.lines 6264 beforeFfis75 beforeShmem75 = (6284, afterFfis75, afterShmem75) := by
  kernel_rfl
theorem shmemStep75 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded75 :: rest) 6264 beforeFfis75 beforeShmem75 = LabToTarget.getShmemInfo rest 6284 afterFfis75 afterShmem75 := by
  rw [getShmemInfo_section, walkStep75]
theorem symbolLength75 : LabToTarget.secLength Padded75.lines 0 = 20 := by
  kernel_rfl
#print axioms shmemStep75
#print axioms symbolLength75
end InitECandidate.Proofs.BackendStages.Metadata
