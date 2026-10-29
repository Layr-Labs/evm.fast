import InitECandidate.Proofs.BackendStages.Metadata.Data639
import InitECandidate.Proofs.BackendStages.Padded639
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem walkStep639 : walkShmemLines Padded639.lines 534860 beforeFfis639 beforeShmem639 = (535504, afterFfis639, afterShmem639) := by
  kernel_rfl
theorem shmemStep639 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded639 :: rest) 534860 beforeFfis639 beforeShmem639 = LabToTarget.getShmemInfo rest 535504 afterFfis639 afterShmem639 := by
  rw [getShmemInfo_section, walkStep639]
theorem symbolLength639 : LabToTarget.secLength Padded639.lines 0 = 644 := by
  kernel_rfl
#print axioms shmemStep639
#print axioms symbolLength639
end InitECandidate.Proofs.BackendStages.Metadata
