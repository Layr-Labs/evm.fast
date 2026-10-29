import InitECandidate.Proofs.BackendStages.Metadata.Data675
import InitECandidate.Proofs.BackendStages.Padded675
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem walkStep675 : walkShmemLines Padded675.lines 603860 beforeFfis675 beforeShmem675 = (604184, afterFfis675, afterShmem675) := by
  kernel_rfl
theorem shmemStep675 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded675 :: rest) 603860 beforeFfis675 beforeShmem675 = LabToTarget.getShmemInfo rest 604184 afterFfis675 afterShmem675 := by
  rw [getShmemInfo_section, walkStep675]
theorem symbolLength675 : LabToTarget.secLength Padded675.lines 0 = 324 := by
  kernel_rfl
#print axioms shmemStep675
#print axioms symbolLength675
end InitECandidate.Proofs.BackendStages.Metadata
