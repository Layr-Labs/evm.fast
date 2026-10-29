import InitECandidate.Proofs.BackendStages.Metadata.Data546
import InitECandidate.Proofs.BackendStages.Padded546
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem walkStep546 : walkShmemLines Padded546.lines 402472 beforeFfis546 beforeShmem546 = (405976, afterFfis546, afterShmem546) := by
  kernel_rfl
theorem shmemStep546 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded546 :: rest) 402472 beforeFfis546 beforeShmem546 = LabToTarget.getShmemInfo rest 405976 afterFfis546 afterShmem546 := by
  rw [getShmemInfo_section, walkStep546]
theorem symbolLength546 : LabToTarget.secLength Padded546.lines 0 = 3504 := by
  kernel_rfl
#print axioms shmemStep546
#print axioms symbolLength546
end InitECandidate.Proofs.BackendStages.Metadata
