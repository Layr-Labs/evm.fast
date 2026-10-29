import InitECandidate.Proofs.BackendStages.Metadata.Data539
import InitECandidate.Proofs.BackendStages.Padded539
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem walkStep539 : walkShmemLines Padded539.lines 399772 beforeFfis539 beforeShmem539 = (400180, afterFfis539, afterShmem539) := by
  kernel_rfl
theorem shmemStep539 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded539 :: rest) 399772 beforeFfis539 beforeShmem539 = LabToTarget.getShmemInfo rest 400180 afterFfis539 afterShmem539 := by
  rw [getShmemInfo_section, walkStep539]
theorem symbolLength539 : LabToTarget.secLength Padded539.lines 0 = 408 := by
  kernel_rfl
#print axioms shmemStep539
#print axioms symbolLength539
end InitECandidate.Proofs.BackendStages.Metadata
