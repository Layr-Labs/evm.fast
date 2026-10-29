import InitECandidate.Proofs.BackendStages.Metadata.Data187
import InitECandidate.Proofs.BackendStages.Padded187
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem walkStep187 : walkShmemLines Padded187.lines 99888 beforeFfis187 beforeShmem187 = (100224, afterFfis187, afterShmem187) := by
  kernel_rfl
theorem shmemStep187 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded187 :: rest) 99888 beforeFfis187 beforeShmem187 = LabToTarget.getShmemInfo rest 100224 afterFfis187 afterShmem187 := by
  rw [getShmemInfo_section, walkStep187]
theorem symbolLength187 : LabToTarget.secLength Padded187.lines 0 = 336 := by
  kernel_rfl
#print axioms shmemStep187
#print axioms symbolLength187
end InitECandidate.Proofs.BackendStages.Metadata
