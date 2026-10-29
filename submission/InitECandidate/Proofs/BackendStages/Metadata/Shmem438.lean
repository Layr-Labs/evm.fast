import InitECandidate.Proofs.BackendStages.Metadata.Data438
import InitECandidate.Proofs.BackendStages.Padded438
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem walkStep438 : walkShmemLines Padded438.lines 324092 beforeFfis438 beforeShmem438 = (324668, afterFfis438, afterShmem438) := by
  kernel_rfl
theorem shmemStep438 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded438 :: rest) 324092 beforeFfis438 beforeShmem438 = LabToTarget.getShmemInfo rest 324668 afterFfis438 afterShmem438 := by
  rw [getShmemInfo_section, walkStep438]
theorem symbolLength438 : LabToTarget.secLength Padded438.lines 0 = 576 := by
  kernel_rfl
#print axioms shmemStep438
#print axioms symbolLength438
end InitECandidate.Proofs.BackendStages.Metadata
