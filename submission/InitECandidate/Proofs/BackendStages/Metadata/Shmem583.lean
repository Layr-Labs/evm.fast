import InitECandidate.Proofs.BackendStages.Metadata.Data583
import InitECandidate.Proofs.BackendStages.Padded583
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem walkStep583 : walkShmemLines Padded583.lines 435432 beforeFfis583 beforeShmem583 = (435888, afterFfis583, afterShmem583) := by
  kernel_rfl
theorem shmemStep583 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded583 :: rest) 435432 beforeFfis583 beforeShmem583 = LabToTarget.getShmemInfo rest 435888 afterFfis583 afterShmem583 := by
  rw [getShmemInfo_section, walkStep583]
theorem symbolLength583 : LabToTarget.secLength Padded583.lines 0 = 456 := by
  kernel_rfl
#print axioms shmemStep583
#print axioms symbolLength583
end InitECandidate.Proofs.BackendStages.Metadata
