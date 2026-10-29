import InitECandidate.Proofs.BackendStages.Metadata.Data247
import InitECandidate.Proofs.BackendStages.Padded247
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem walkStep247 : walkShmemLines Padded247.lines 179176 beforeFfis247 beforeShmem247 = (179736, afterFfis247, afterShmem247) := by
  kernel_rfl
theorem shmemStep247 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded247 :: rest) 179176 beforeFfis247 beforeShmem247 = LabToTarget.getShmemInfo rest 179736 afterFfis247 afterShmem247 := by
  rw [getShmemInfo_section, walkStep247]
theorem symbolLength247 : LabToTarget.secLength Padded247.lines 0 = 560 := by
  kernel_rfl
#print axioms shmemStep247
#print axioms symbolLength247
end InitECandidate.Proofs.BackendStages.Metadata
