import InitECandidate.Proofs.BackendStages.Metadata.Data511
import InitECandidate.Proofs.BackendStages.Padded511
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem walkStep511 : walkShmemLines Padded511.lines 378696 beforeFfis511 beforeShmem511 = (379460, afterFfis511, afterShmem511) := by
  kernel_rfl
theorem shmemStep511 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded511 :: rest) 378696 beforeFfis511 beforeShmem511 = LabToTarget.getShmemInfo rest 379460 afterFfis511 afterShmem511 := by
  rw [getShmemInfo_section, walkStep511]
theorem symbolLength511 : LabToTarget.secLength Padded511.lines 0 = 764 := by
  kernel_rfl
#print axioms shmemStep511
#print axioms symbolLength511
end InitECandidate.Proofs.BackendStages.Metadata
