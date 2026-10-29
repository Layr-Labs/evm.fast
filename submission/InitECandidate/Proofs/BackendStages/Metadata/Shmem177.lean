import InitECandidate.Proofs.BackendStages.Metadata.Data177
import InitECandidate.Proofs.BackendStages.Padded177
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem walkStep177 : walkShmemLines Padded177.lines 96992 beforeFfis177 beforeShmem177 = (97356, afterFfis177, afterShmem177) := by
  kernel_rfl
theorem shmemStep177 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded177 :: rest) 96992 beforeFfis177 beforeShmem177 = LabToTarget.getShmemInfo rest 97356 afterFfis177 afterShmem177 := by
  rw [getShmemInfo_section, walkStep177]
theorem symbolLength177 : LabToTarget.secLength Padded177.lines 0 = 364 := by
  kernel_rfl
#print axioms shmemStep177
#print axioms symbolLength177
end InitECandidate.Proofs.BackendStages.Metadata
