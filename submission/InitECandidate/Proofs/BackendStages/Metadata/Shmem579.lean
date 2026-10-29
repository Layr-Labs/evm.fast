import InitECandidate.Proofs.BackendStages.Metadata.Data579
import InitECandidate.Proofs.BackendStages.Padded579
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem walkStep579 : walkShmemLines Padded579.lines 433496 beforeFfis579 beforeShmem579 = (433952, afterFfis579, afterShmem579) := by
  kernel_rfl
theorem shmemStep579 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded579 :: rest) 433496 beforeFfis579 beforeShmem579 = LabToTarget.getShmemInfo rest 433952 afterFfis579 afterShmem579 := by
  rw [getShmemInfo_section, walkStep579]
theorem symbolLength579 : LabToTarget.secLength Padded579.lines 0 = 456 := by
  kernel_rfl
#print axioms shmemStep579
#print axioms symbolLength579
end InitECandidate.Proofs.BackendStages.Metadata
