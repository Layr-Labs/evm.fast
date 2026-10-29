import InitECandidate.Proofs.BackendStages.Metadata.Data67
import InitECandidate.Proofs.BackendStages.Padded67
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem walkStep67 : walkShmemLines Padded67.lines 4872 beforeFfis67 beforeShmem67 = (4968, afterFfis67, afterShmem67) := by
  kernel_rfl
theorem shmemStep67 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded67 :: rest) 4872 beforeFfis67 beforeShmem67 = LabToTarget.getShmemInfo rest 4968 afterFfis67 afterShmem67 := by
  rw [getShmemInfo_section, walkStep67]
theorem symbolLength67 : LabToTarget.secLength Padded67.lines 0 = 96 := by
  kernel_rfl
#print axioms shmemStep67
#print axioms symbolLength67
end InitECandidate.Proofs.BackendStages.Metadata
