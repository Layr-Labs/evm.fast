import InitECandidate.Proofs.BackendStages.Metadata.Data828
import InitECandidate.Proofs.BackendStages.Padded828
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem walkStep828 : walkShmemLines Padded828.lines 895356 beforeFfis828 beforeShmem828 = (895868, afterFfis828, afterShmem828) := by
  kernel_rfl
theorem shmemStep828 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded828 :: rest) 895356 beforeFfis828 beforeShmem828 = LabToTarget.getShmemInfo rest 895868 afterFfis828 afterShmem828 := by
  rw [getShmemInfo_section, walkStep828]
theorem symbolLength828 : LabToTarget.secLength Padded828.lines 0 = 512 := by
  kernel_rfl
#print axioms shmemStep828
#print axioms symbolLength828
end InitECandidate.Proofs.BackendStages.Metadata
