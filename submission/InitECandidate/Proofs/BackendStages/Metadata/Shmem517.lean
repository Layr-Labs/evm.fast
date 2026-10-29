import InitECandidate.Proofs.BackendStages.Metadata.Data517
import InitECandidate.Proofs.BackendStages.Padded517
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem walkStep517 : walkShmemLines Padded517.lines 382840 beforeFfis517 beforeShmem517 = (383356, afterFfis517, afterShmem517) := by
  kernel_rfl
theorem shmemStep517 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded517 :: rest) 382840 beforeFfis517 beforeShmem517 = LabToTarget.getShmemInfo rest 383356 afterFfis517 afterShmem517 := by
  rw [getShmemInfo_section, walkStep517]
theorem symbolLength517 : LabToTarget.secLength Padded517.lines 0 = 516 := by
  kernel_rfl
#print axioms shmemStep517
#print axioms symbolLength517
end InitECandidate.Proofs.BackendStages.Metadata
