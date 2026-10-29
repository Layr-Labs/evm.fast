import InitECandidate.Proofs.BackendStages.Metadata.Data170
import InitECandidate.Proofs.BackendStages.Padded170
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem walkStep170 : walkShmemLines Padded170.lines 95208 beforeFfis170 beforeShmem170 = (95628, afterFfis170, afterShmem170) := by
  kernel_rfl
theorem shmemStep170 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded170 :: rest) 95208 beforeFfis170 beforeShmem170 = LabToTarget.getShmemInfo rest 95628 afterFfis170 afterShmem170 := by
  rw [getShmemInfo_section, walkStep170]
theorem symbolLength170 : LabToTarget.secLength Padded170.lines 0 = 420 := by
  kernel_rfl
#print axioms shmemStep170
#print axioms symbolLength170
end InitECandidate.Proofs.BackendStages.Metadata
