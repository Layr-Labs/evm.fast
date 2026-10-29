import InitECandidate.Proofs.BackendStages.Metadata.Data319
import InitECandidate.Proofs.BackendStages.Padded319
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem walkStep319 : walkShmemLines Padded319.lines 252068 beforeFfis319 beforeShmem319 = (252648, afterFfis319, afterShmem319) := by
  kernel_rfl
theorem shmemStep319 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded319 :: rest) 252068 beforeFfis319 beforeShmem319 = LabToTarget.getShmemInfo rest 252648 afterFfis319 afterShmem319 := by
  rw [getShmemInfo_section, walkStep319]
theorem symbolLength319 : LabToTarget.secLength Padded319.lines 0 = 580 := by
  kernel_rfl
#print axioms shmemStep319
#print axioms symbolLength319
end InitECandidate.Proofs.BackendStages.Metadata
