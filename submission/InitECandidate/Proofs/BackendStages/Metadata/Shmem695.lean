import InitECandidate.Proofs.BackendStages.Metadata.Data695
import InitECandidate.Proofs.BackendStages.Padded695
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem walkStep695 : walkShmemLines Padded695.lines 646196 beforeFfis695 beforeShmem695 = (649132, afterFfis695, afterShmem695) := by
  kernel_rfl
theorem shmemStep695 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded695 :: rest) 646196 beforeFfis695 beforeShmem695 = LabToTarget.getShmemInfo rest 649132 afterFfis695 afterShmem695 := by
  rw [getShmemInfo_section, walkStep695]
theorem symbolLength695 : LabToTarget.secLength Padded695.lines 0 = 2936 := by
  kernel_rfl
#print axioms shmemStep695
#print axioms symbolLength695
end InitECandidate.Proofs.BackendStages.Metadata
