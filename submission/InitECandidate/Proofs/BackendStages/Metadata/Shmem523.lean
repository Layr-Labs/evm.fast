import InitECandidate.Proofs.BackendStages.Metadata.Data523
import InitECandidate.Proofs.BackendStages.Padded523
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem walkStep523 : walkShmemLines Padded523.lines 387668 beforeFfis523 beforeShmem523 = (389804, afterFfis523, afterShmem523) := by
  kernel_rfl
theorem shmemStep523 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded523 :: rest) 387668 beforeFfis523 beforeShmem523 = LabToTarget.getShmemInfo rest 389804 afterFfis523 afterShmem523 := by
  rw [getShmemInfo_section, walkStep523]
theorem symbolLength523 : LabToTarget.secLength Padded523.lines 0 = 2136 := by
  kernel_rfl
#print axioms shmemStep523
#print axioms symbolLength523
end InitECandidate.Proofs.BackendStages.Metadata
