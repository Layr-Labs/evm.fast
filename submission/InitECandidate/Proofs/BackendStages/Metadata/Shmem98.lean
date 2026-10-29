import InitECandidate.Proofs.BackendStages.Metadata.Data98
import InitECandidate.Proofs.BackendStages.Padded98
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem walkStep98 : walkShmemLines Padded98.lines 10456 beforeFfis98 beforeShmem98 = (10652, afterFfis98, afterShmem98) := by
  kernel_rfl
theorem shmemStep98 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded98 :: rest) 10456 beforeFfis98 beforeShmem98 = LabToTarget.getShmemInfo rest 10652 afterFfis98 afterShmem98 := by
  rw [getShmemInfo_section, walkStep98]
theorem symbolLength98 : LabToTarget.secLength Padded98.lines 0 = 196 := by
  kernel_rfl
#print axioms shmemStep98
#print axioms symbolLength98
end InitECandidate.Proofs.BackendStages.Metadata
