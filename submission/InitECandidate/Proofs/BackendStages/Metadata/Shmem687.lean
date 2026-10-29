import InitECandidate.Proofs.BackendStages.Metadata.Data687
import InitECandidate.Proofs.BackendStages.Padded687
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem walkStep687 : walkShmemLines Padded687.lines 627128 beforeFfis687 beforeShmem687 = (627408, afterFfis687, afterShmem687) := by
  kernel_rfl
theorem shmemStep687 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded687 :: rest) 627128 beforeFfis687 beforeShmem687 = LabToTarget.getShmemInfo rest 627408 afterFfis687 afterShmem687 := by
  rw [getShmemInfo_section, walkStep687]
theorem symbolLength687 : LabToTarget.secLength Padded687.lines 0 = 280 := by
  kernel_rfl
#print axioms shmemStep687
#print axioms symbolLength687
end InitECandidate.Proofs.BackendStages.Metadata
