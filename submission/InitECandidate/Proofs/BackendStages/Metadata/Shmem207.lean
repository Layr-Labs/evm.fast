import InitECandidate.Proofs.BackendStages.Metadata.Data207
import InitECandidate.Proofs.BackendStages.Padded207
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem walkStep207 : walkShmemLines Padded207.lines 114652 beforeFfis207 beforeShmem207 = (118404, afterFfis207, afterShmem207) := by
  kernel_rfl
theorem shmemStep207 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded207 :: rest) 114652 beforeFfis207 beforeShmem207 = LabToTarget.getShmemInfo rest 118404 afterFfis207 afterShmem207 := by
  rw [getShmemInfo_section, walkStep207]
theorem symbolLength207 : LabToTarget.secLength Padded207.lines 0 = 3752 := by
  kernel_rfl
#print axioms shmemStep207
#print axioms symbolLength207
end InitECandidate.Proofs.BackendStages.Metadata
