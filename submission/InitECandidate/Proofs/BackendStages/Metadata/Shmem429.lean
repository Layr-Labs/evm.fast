import InitECandidate.Proofs.BackendStages.Metadata.Data429
import InitECandidate.Proofs.BackendStages.Padded429
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem walkStep429 : walkShmemLines Padded429.lines 319020 beforeFfis429 beforeShmem429 = (319456, afterFfis429, afterShmem429) := by
  kernel_rfl
theorem shmemStep429 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded429 :: rest) 319020 beforeFfis429 beforeShmem429 = LabToTarget.getShmemInfo rest 319456 afterFfis429 afterShmem429 := by
  rw [getShmemInfo_section, walkStep429]
theorem symbolLength429 : LabToTarget.secLength Padded429.lines 0 = 436 := by
  kernel_rfl
#print axioms shmemStep429
#print axioms symbolLength429
end InitECandidate.Proofs.BackendStages.Metadata
