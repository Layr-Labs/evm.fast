import InitECandidate.Proofs.BackendStages.Metadata.Data165
import InitECandidate.Proofs.BackendStages.Padded165
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem walkStep165 : walkShmemLines Padded165.lines 93132 beforeFfis165 beforeShmem165 = (93672, afterFfis165, afterShmem165) := by
  kernel_rfl
theorem shmemStep165 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded165 :: rest) 93132 beforeFfis165 beforeShmem165 = LabToTarget.getShmemInfo rest 93672 afterFfis165 afterShmem165 := by
  rw [getShmemInfo_section, walkStep165]
theorem symbolLength165 : LabToTarget.secLength Padded165.lines 0 = 540 := by
  kernel_rfl
#print axioms shmemStep165
#print axioms symbolLength165
end InitECandidate.Proofs.BackendStages.Metadata
