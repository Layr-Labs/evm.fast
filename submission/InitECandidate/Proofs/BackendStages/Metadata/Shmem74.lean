import InitECandidate.Proofs.BackendStages.Metadata.Data74
import InitECandidate.Proofs.BackendStages.Padded74
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem walkStep74 : walkShmemLines Padded74.lines 5884 beforeFfis74 beforeShmem74 = (6264, afterFfis74, afterShmem74) := by
  kernel_rfl
theorem shmemStep74 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded74 :: rest) 5884 beforeFfis74 beforeShmem74 = LabToTarget.getShmemInfo rest 6264 afterFfis74 afterShmem74 := by
  rw [getShmemInfo_section, walkStep74]
theorem symbolLength74 : LabToTarget.secLength Padded74.lines 0 = 380 := by
  kernel_rfl
#print axioms shmemStep74
#print axioms symbolLength74
end InitECandidate.Proofs.BackendStages.Metadata
