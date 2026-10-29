import InitECandidate.Proofs.BackendStages.Metadata.Data538
import InitECandidate.Proofs.BackendStages.Padded538
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem walkStep538 : walkShmemLines Padded538.lines 399648 beforeFfis538 beforeShmem538 = (399772, afterFfis538, afterShmem538) := by
  kernel_rfl
theorem shmemStep538 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded538 :: rest) 399648 beforeFfis538 beforeShmem538 = LabToTarget.getShmemInfo rest 399772 afterFfis538 afterShmem538 := by
  rw [getShmemInfo_section, walkStep538]
theorem symbolLength538 : LabToTarget.secLength Padded538.lines 0 = 124 := by
  kernel_rfl
#print axioms shmemStep538
#print axioms symbolLength538
end InitECandidate.Proofs.BackendStages.Metadata
