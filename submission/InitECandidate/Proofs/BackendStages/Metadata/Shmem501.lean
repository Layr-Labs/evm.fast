import InitECandidate.Proofs.BackendStages.Metadata.Data501
import InitECandidate.Proofs.BackendStages.Padded501
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem walkStep501 : walkShmemLines Padded501.lines 370476 beforeFfis501 beforeShmem501 = (371240, afterFfis501, afterShmem501) := by
  kernel_rfl
theorem shmemStep501 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded501 :: rest) 370476 beforeFfis501 beforeShmem501 = LabToTarget.getShmemInfo rest 371240 afterFfis501 afterShmem501 := by
  rw [getShmemInfo_section, walkStep501]
theorem symbolLength501 : LabToTarget.secLength Padded501.lines 0 = 764 := by
  kernel_rfl
#print axioms shmemStep501
#print axioms symbolLength501
end InitECandidate.Proofs.BackendStages.Metadata
