import InitECandidate.Proofs.BackendStages.Metadata.Data474
import InitECandidate.Proofs.BackendStages.Padded474
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem walkStep474 : walkShmemLines Padded474.lines 358716 beforeFfis474 beforeShmem474 = (358796, afterFfis474, afterShmem474) := by
  kernel_rfl
theorem shmemStep474 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded474 :: rest) 358716 beforeFfis474 beforeShmem474 = LabToTarget.getShmemInfo rest 358796 afterFfis474 afterShmem474 := by
  rw [getShmemInfo_section, walkStep474]
theorem symbolLength474 : LabToTarget.secLength Padded474.lines 0 = 80 := by
  kernel_rfl
#print axioms shmemStep474
#print axioms symbolLength474
end InitECandidate.Proofs.BackendStages.Metadata
