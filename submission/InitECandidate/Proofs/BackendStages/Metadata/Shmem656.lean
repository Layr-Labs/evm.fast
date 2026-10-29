import InitECandidate.Proofs.BackendStages.Metadata.Data656
import InitECandidate.Proofs.BackendStages.Padded656
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem walkStep656 : walkShmemLines Padded656.lines 578596 beforeFfis656 beforeShmem656 = (580068, afterFfis656, afterShmem656) := by
  kernel_rfl
theorem shmemStep656 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded656 :: rest) 578596 beforeFfis656 beforeShmem656 = LabToTarget.getShmemInfo rest 580068 afterFfis656 afterShmem656 := by
  rw [getShmemInfo_section, walkStep656]
theorem symbolLength656 : LabToTarget.secLength Padded656.lines 0 = 1472 := by
  kernel_rfl
#print axioms shmemStep656
#print axioms symbolLength656
end InitECandidate.Proofs.BackendStages.Metadata
