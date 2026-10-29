import InitECandidate.Proofs.BackendStages.Metadata.Data110
import InitECandidate.Proofs.BackendStages.Padded110
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem walkStep110 : walkShmemLines Padded110.lines 11356 beforeFfis110 beforeShmem110 = (11756, afterFfis110, afterShmem110) := by
  kernel_rfl
theorem shmemStep110 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded110 :: rest) 11356 beforeFfis110 beforeShmem110 = LabToTarget.getShmemInfo rest 11756 afterFfis110 afterShmem110 := by
  rw [getShmemInfo_section, walkStep110]
theorem symbolLength110 : LabToTarget.secLength Padded110.lines 0 = 400 := by
  kernel_rfl
#print axioms shmemStep110
#print axioms symbolLength110
end InitECandidate.Proofs.BackendStages.Metadata
