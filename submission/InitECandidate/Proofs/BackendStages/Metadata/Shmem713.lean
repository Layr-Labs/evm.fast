import InitECandidate.Proofs.BackendStages.Metadata.Data713
import InitECandidate.Proofs.BackendStages.Padded713
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem walkStep713 : walkShmemLines Padded713.lines 704576 beforeFfis713 beforeShmem713 = (704604, afterFfis713, afterShmem713) := by
  kernel_rfl
theorem shmemStep713 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded713 :: rest) 704576 beforeFfis713 beforeShmem713 = LabToTarget.getShmemInfo rest 704604 afterFfis713 afterShmem713 := by
  rw [getShmemInfo_section, walkStep713]
theorem symbolLength713 : LabToTarget.secLength Padded713.lines 0 = 28 := by
  kernel_rfl
#print axioms shmemStep713
#print axioms symbolLength713
end InitECandidate.Proofs.BackendStages.Metadata
