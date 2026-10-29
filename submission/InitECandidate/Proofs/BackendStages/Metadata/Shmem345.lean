import InitECandidate.Proofs.BackendStages.Metadata.Data345
import InitECandidate.Proofs.BackendStages.Padded345
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem walkStep345 : walkShmemLines Padded345.lines 271732 beforeFfis345 beforeShmem345 = (276248, afterFfis345, afterShmem345) := by
  kernel_rfl
theorem shmemStep345 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded345 :: rest) 271732 beforeFfis345 beforeShmem345 = LabToTarget.getShmemInfo rest 276248 afterFfis345 afterShmem345 := by
  rw [getShmemInfo_section, walkStep345]
theorem symbolLength345 : LabToTarget.secLength Padded345.lines 0 = 4516 := by
  kernel_rfl
#print axioms shmemStep345
#print axioms symbolLength345
end InitECandidate.Proofs.BackendStages.Metadata
