import InitECandidate.Proofs.BackendStages.Metadata.Data870
import InitECandidate.Proofs.BackendStages.Padded870
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem walkStep870 : walkShmemLines Padded870.lines 977424 beforeFfis870 beforeShmem870 = (977640, afterFfis870, afterShmem870) := by
  kernel_rfl
theorem shmemStep870 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded870 :: rest) 977424 beforeFfis870 beforeShmem870 = LabToTarget.getShmemInfo rest 977640 afterFfis870 afterShmem870 := by
  rw [getShmemInfo_section, walkStep870]
theorem symbolLength870 : LabToTarget.secLength Padded870.lines 0 = 216 := by
  kernel_rfl
#print axioms shmemStep870
#print axioms symbolLength870
end InitECandidate.Proofs.BackendStages.Metadata
