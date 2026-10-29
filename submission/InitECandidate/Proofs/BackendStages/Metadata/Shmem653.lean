import InitECandidate.Proofs.BackendStages.Metadata.Data653
import InitECandidate.Proofs.BackendStages.Padded653
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem walkStep653 : walkShmemLines Padded653.lines 569676 beforeFfis653 beforeShmem653 = (570936, afterFfis653, afterShmem653) := by
  kernel_rfl
theorem shmemStep653 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded653 :: rest) 569676 beforeFfis653 beforeShmem653 = LabToTarget.getShmemInfo rest 570936 afterFfis653 afterShmem653 := by
  rw [getShmemInfo_section, walkStep653]
theorem symbolLength653 : LabToTarget.secLength Padded653.lines 0 = 1260 := by
  kernel_rfl
#print axioms shmemStep653
#print axioms symbolLength653
end InitECandidate.Proofs.BackendStages.Metadata
