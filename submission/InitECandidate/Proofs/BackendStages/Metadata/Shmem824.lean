import InitECandidate.Proofs.BackendStages.Metadata.Data824
import InitECandidate.Proofs.BackendStages.Padded824
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem walkStep824 : walkShmemLines Padded824.lines 892712 beforeFfis824 beforeShmem824 = (893644, afterFfis824, afterShmem824) := by
  kernel_rfl
theorem shmemStep824 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded824 :: rest) 892712 beforeFfis824 beforeShmem824 = LabToTarget.getShmemInfo rest 893644 afterFfis824 afterShmem824 := by
  rw [getShmemInfo_section, walkStep824]
theorem symbolLength824 : LabToTarget.secLength Padded824.lines 0 = 932 := by
  kernel_rfl
#print axioms shmemStep824
#print axioms symbolLength824
end InitECandidate.Proofs.BackendStages.Metadata
