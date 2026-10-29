import InitECandidate.Proofs.BackendStages.Metadata.Data371
import InitECandidate.Proofs.BackendStages.Padded371
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem walkStep371 : walkShmemLines Padded371.lines 287128 beforeFfis371 beforeShmem371 = (287144, afterFfis371, afterShmem371) := by
  kernel_rfl
theorem shmemStep371 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded371 :: rest) 287128 beforeFfis371 beforeShmem371 = LabToTarget.getShmemInfo rest 287144 afterFfis371 afterShmem371 := by
  rw [getShmemInfo_section, walkStep371]
theorem symbolLength371 : LabToTarget.secLength Padded371.lines 0 = 16 := by
  kernel_rfl
#print axioms shmemStep371
#print axioms symbolLength371
end InitECandidate.Proofs.BackendStages.Metadata
