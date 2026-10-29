import InitECandidate.Proofs.BackendStages.Metadata.Data519
import InitECandidate.Proofs.BackendStages.Padded519
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem walkStep519 : walkShmemLines Padded519.lines 384292 beforeFfis519 beforeShmem519 = (385212, afterFfis519, afterShmem519) := by
  kernel_rfl
theorem shmemStep519 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded519 :: rest) 384292 beforeFfis519 beforeShmem519 = LabToTarget.getShmemInfo rest 385212 afterFfis519 afterShmem519 := by
  rw [getShmemInfo_section, walkStep519]
theorem symbolLength519 : LabToTarget.secLength Padded519.lines 0 = 920 := by
  kernel_rfl
#print axioms shmemStep519
#print axioms symbolLength519
end InitECandidate.Proofs.BackendStages.Metadata
