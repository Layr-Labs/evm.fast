import InitECandidate.Proofs.BackendStages.Metadata.Data482
import InitECandidate.Proofs.BackendStages.Padded482
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem walkStep482 : walkShmemLines Padded482.lines 362140 beforeFfis482 beforeShmem482 = (362808, afterFfis482, afterShmem482) := by
  kernel_rfl
theorem shmemStep482 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded482 :: rest) 362140 beforeFfis482 beforeShmem482 = LabToTarget.getShmemInfo rest 362808 afterFfis482 afterShmem482 := by
  rw [getShmemInfo_section, walkStep482]
theorem symbolLength482 : LabToTarget.secLength Padded482.lines 0 = 668 := by
  kernel_rfl
#print axioms shmemStep482
#print axioms symbolLength482
end InitECandidate.Proofs.BackendStages.Metadata
