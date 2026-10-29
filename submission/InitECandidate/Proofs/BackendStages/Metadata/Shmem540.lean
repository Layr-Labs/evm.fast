import InitECandidate.Proofs.BackendStages.Metadata.Data540
import InitECandidate.Proofs.BackendStages.Padded540
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem walkStep540 : walkShmemLines Padded540.lines 400180 beforeFfis540 beforeShmem540 = (400240, afterFfis540, afterShmem540) := by
  kernel_rfl
theorem shmemStep540 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded540 :: rest) 400180 beforeFfis540 beforeShmem540 = LabToTarget.getShmemInfo rest 400240 afterFfis540 afterShmem540 := by
  rw [getShmemInfo_section, walkStep540]
theorem symbolLength540 : LabToTarget.secLength Padded540.lines 0 = 60 := by
  kernel_rfl
#print axioms shmemStep540
#print axioms symbolLength540
end InitECandidate.Proofs.BackendStages.Metadata
