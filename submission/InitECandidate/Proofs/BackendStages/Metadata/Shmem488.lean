import InitECandidate.Proofs.BackendStages.Metadata.Data488
import InitECandidate.Proofs.BackendStages.Padded488
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem walkStep488 : walkShmemLines Padded488.lines 364736 beforeFfis488 beforeShmem488 = (365004, afterFfis488, afterShmem488) := by
  kernel_rfl
theorem shmemStep488 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded488 :: rest) 364736 beforeFfis488 beforeShmem488 = LabToTarget.getShmemInfo rest 365004 afterFfis488 afterShmem488 := by
  rw [getShmemInfo_section, walkStep488]
theorem symbolLength488 : LabToTarget.secLength Padded488.lines 0 = 268 := by
  kernel_rfl
#print axioms shmemStep488
#print axioms symbolLength488
end InitECandidate.Proofs.BackendStages.Metadata
