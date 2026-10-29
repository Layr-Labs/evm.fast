import InitECandidate.Proofs.BackendStages.Metadata.Data396
import InitECandidate.Proofs.BackendStages.Padded396
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem walkStep396 : walkShmemLines Padded396.lines 301952 beforeFfis396 beforeShmem396 = (302120, afterFfis396, afterShmem396) := by
  kernel_rfl
theorem shmemStep396 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded396 :: rest) 301952 beforeFfis396 beforeShmem396 = LabToTarget.getShmemInfo rest 302120 afterFfis396 afterShmem396 := by
  rw [getShmemInfo_section, walkStep396]
theorem symbolLength396 : LabToTarget.secLength Padded396.lines 0 = 168 := by
  kernel_rfl
#print axioms shmemStep396
#print axioms symbolLength396
end InitECandidate.Proofs.BackendStages.Metadata
