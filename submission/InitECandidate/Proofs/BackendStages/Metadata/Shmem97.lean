import InitECandidate.Proofs.BackendStages.Metadata.Data97
import InitECandidate.Proofs.BackendStages.Padded97
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem walkStep97 : walkShmemLines Padded97.lines 10412 beforeFfis97 beforeShmem97 = (10456, afterFfis97, afterShmem97) := by
  kernel_rfl
theorem shmemStep97 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded97 :: rest) 10412 beforeFfis97 beforeShmem97 = LabToTarget.getShmemInfo rest 10456 afterFfis97 afterShmem97 := by
  rw [getShmemInfo_section, walkStep97]
theorem symbolLength97 : LabToTarget.secLength Padded97.lines 0 = 44 := by
  kernel_rfl
#print axioms shmemStep97
#print axioms symbolLength97
end InitECandidate.Proofs.BackendStages.Metadata
