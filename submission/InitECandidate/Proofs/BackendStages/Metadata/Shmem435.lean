import InitECandidate.Proofs.BackendStages.Metadata.Data435
import InitECandidate.Proofs.BackendStages.Padded435
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem walkStep435 : walkShmemLines Padded435.lines 322960 beforeFfis435 beforeShmem435 = (323300, afterFfis435, afterShmem435) := by
  kernel_rfl
theorem shmemStep435 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded435 :: rest) 322960 beforeFfis435 beforeShmem435 = LabToTarget.getShmemInfo rest 323300 afterFfis435 afterShmem435 := by
  rw [getShmemInfo_section, walkStep435]
theorem symbolLength435 : LabToTarget.secLength Padded435.lines 0 = 340 := by
  kernel_rfl
#print axioms shmemStep435
#print axioms symbolLength435
end InitECandidate.Proofs.BackendStages.Metadata
