import InitECandidate.Proofs.BackendStages.Metadata.Data503
import InitECandidate.Proofs.BackendStages.Padded503
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem walkStep503 : walkShmemLines Padded503.lines 372004 beforeFfis503 beforeShmem503 = (372768, afterFfis503, afterShmem503) := by
  kernel_rfl
theorem shmemStep503 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded503 :: rest) 372004 beforeFfis503 beforeShmem503 = LabToTarget.getShmemInfo rest 372768 afterFfis503 afterShmem503 := by
  rw [getShmemInfo_section, walkStep503]
theorem symbolLength503 : LabToTarget.secLength Padded503.lines 0 = 764 := by
  kernel_rfl
#print axioms shmemStep503
#print axioms symbolLength503
end InitECandidate.Proofs.BackendStages.Metadata
