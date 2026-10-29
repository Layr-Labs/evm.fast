import InitECandidate.Proofs.BackendStages.Metadata.Data594
import InitECandidate.Proofs.BackendStages.Padded594
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem walkStep594 : walkShmemLines Padded594.lines 454216 beforeFfis594 beforeShmem594 = (456424, afterFfis594, afterShmem594) := by
  kernel_rfl
theorem shmemStep594 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded594 :: rest) 454216 beforeFfis594 beforeShmem594 = LabToTarget.getShmemInfo rest 456424 afterFfis594 afterShmem594 := by
  rw [getShmemInfo_section, walkStep594]
theorem symbolLength594 : LabToTarget.secLength Padded594.lines 0 = 2208 := by
  kernel_rfl
#print axioms shmemStep594
#print axioms symbolLength594
end InitECandidate.Proofs.BackendStages.Metadata
