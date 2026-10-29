import InitECandidate.Proofs.BackendStages.Metadata.Data751
import InitECandidate.Proofs.BackendStages.Padded751
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem walkStep751 : walkShmemLines Padded751.lines 747568 beforeFfis751 beforeShmem751 = (747984, afterFfis751, afterShmem751) := by
  kernel_rfl
theorem shmemStep751 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded751 :: rest) 747568 beforeFfis751 beforeShmem751 = LabToTarget.getShmemInfo rest 747984 afterFfis751 afterShmem751 := by
  rw [getShmemInfo_section, walkStep751]
theorem symbolLength751 : LabToTarget.secLength Padded751.lines 0 = 416 := by
  kernel_rfl
#print axioms shmemStep751
#print axioms symbolLength751
end InitECandidate.Proofs.BackendStages.Metadata
