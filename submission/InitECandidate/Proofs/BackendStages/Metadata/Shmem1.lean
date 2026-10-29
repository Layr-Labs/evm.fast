import InitECandidate.Proofs.BackendStages.Metadata.Data1
import InitECandidate.Proofs.BackendStages.Padded1
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem walkStep1 : walkShmemLines Padded1.lines 756 beforeFfis1 beforeShmem1 = (764, afterFfis1, afterShmem1) := by
  kernel_rfl
theorem shmemStep1 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded1 :: rest) 756 beforeFfis1 beforeShmem1 = LabToTarget.getShmemInfo rest 764 afterFfis1 afterShmem1 := by
  rw [getShmemInfo_section, walkStep1]
theorem symbolLength1 : LabToTarget.secLength Padded1.lines 0 = 8 := by
  kernel_rfl
#print axioms shmemStep1
#print axioms symbolLength1
end InitECandidate.Proofs.BackendStages.Metadata
