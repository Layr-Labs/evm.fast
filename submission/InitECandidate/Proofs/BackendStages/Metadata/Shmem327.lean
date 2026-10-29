import InitECandidate.Proofs.BackendStages.Metadata.Data327
import InitECandidate.Proofs.BackendStages.Padded327
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem walkStep327 : walkShmemLines Padded327.lines 258164 beforeFfis327 beforeShmem327 = (258404, afterFfis327, afterShmem327) := by
  kernel_rfl
theorem shmemStep327 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded327 :: rest) 258164 beforeFfis327 beforeShmem327 = LabToTarget.getShmemInfo rest 258404 afterFfis327 afterShmem327 := by
  rw [getShmemInfo_section, walkStep327]
theorem symbolLength327 : LabToTarget.secLength Padded327.lines 0 = 240 := by
  kernel_rfl
#print axioms shmemStep327
#print axioms symbolLength327
end InitECandidate.Proofs.BackendStages.Metadata
