import InitECandidate.Proofs.BackendStages.Metadata.Data454
import InitECandidate.Proofs.BackendStages.Padded454
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem walkStep454 : walkShmemLines Padded454.lines 333936 beforeFfis454 beforeShmem454 = (337432, afterFfis454, afterShmem454) := by
  kernel_rfl
theorem shmemStep454 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded454 :: rest) 333936 beforeFfis454 beforeShmem454 = LabToTarget.getShmemInfo rest 337432 afterFfis454 afterShmem454 := by
  rw [getShmemInfo_section, walkStep454]
theorem symbolLength454 : LabToTarget.secLength Padded454.lines 0 = 3496 := by
  kernel_rfl
#print axioms shmemStep454
#print axioms symbolLength454
end InitECandidate.Proofs.BackendStages.Metadata
