import InitECandidate.Proofs.BackendStages.Metadata.Data834
import InitECandidate.Proofs.BackendStages.Padded834
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem walkStep834 : walkShmemLines Padded834.lines 900188 beforeFfis834 beforeShmem834 = (902292, afterFfis834, afterShmem834) := by
  kernel_rfl
theorem shmemStep834 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded834 :: rest) 900188 beforeFfis834 beforeShmem834 = LabToTarget.getShmemInfo rest 902292 afterFfis834 afterShmem834 := by
  rw [getShmemInfo_section, walkStep834]
theorem symbolLength834 : LabToTarget.secLength Padded834.lines 0 = 2104 := by
  kernel_rfl
#print axioms shmemStep834
#print axioms symbolLength834
end InitECandidate.Proofs.BackendStages.Metadata
