import InitECandidate.Proofs.BackendStages.Metadata.Data282
import InitECandidate.Proofs.BackendStages.Padded282
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem walkStep282 : walkShmemLines Padded282.lines 223872 beforeFfis282 beforeShmem282 = (224116, afterFfis282, afterShmem282) := by
  kernel_rfl
theorem shmemStep282 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded282 :: rest) 223872 beforeFfis282 beforeShmem282 = LabToTarget.getShmemInfo rest 224116 afterFfis282 afterShmem282 := by
  rw [getShmemInfo_section, walkStep282]
theorem symbolLength282 : LabToTarget.secLength Padded282.lines 0 = 244 := by
  kernel_rfl
#print axioms shmemStep282
#print axioms symbolLength282
end InitECandidate.Proofs.BackendStages.Metadata
