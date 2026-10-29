import InitECandidate.Proofs.BackendStages.Metadata.Data413
import InitECandidate.Proofs.BackendStages.Padded413
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem walkStep413 : walkShmemLines Padded413.lines 310652 beforeFfis413 beforeShmem413 = (310816, afterFfis413, afterShmem413) := by
  kernel_rfl
theorem shmemStep413 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded413 :: rest) 310652 beforeFfis413 beforeShmem413 = LabToTarget.getShmemInfo rest 310816 afterFfis413 afterShmem413 := by
  rw [getShmemInfo_section, walkStep413]
theorem symbolLength413 : LabToTarget.secLength Padded413.lines 0 = 164 := by
  kernel_rfl
#print axioms shmemStep413
#print axioms symbolLength413
end InitECandidate.Proofs.BackendStages.Metadata
