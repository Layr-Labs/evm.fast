import InitECandidate.Proofs.BackendStages.Metadata.Data248
import InitECandidate.Proofs.BackendStages.Padded248
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem walkStep248 : walkShmemLines Padded248.lines 179736 beforeFfis248 beforeShmem248 = (182412, afterFfis248, afterShmem248) := by
  kernel_rfl
theorem shmemStep248 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded248 :: rest) 179736 beforeFfis248 beforeShmem248 = LabToTarget.getShmemInfo rest 182412 afterFfis248 afterShmem248 := by
  rw [getShmemInfo_section, walkStep248]
theorem symbolLength248 : LabToTarget.secLength Padded248.lines 0 = 2676 := by
  kernel_rfl
#print axioms shmemStep248
#print axioms symbolLength248
end InitECandidate.Proofs.BackendStages.Metadata
