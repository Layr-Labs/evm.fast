import InitECandidate.Proofs.BackendStages.Metadata.Data806
import InitECandidate.Proofs.BackendStages.Padded806
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem walkStep806 : walkShmemLines Padded806.lines 865484 beforeFfis806 beforeShmem806 = (866132, afterFfis806, afterShmem806) := by
  kernel_rfl
theorem shmemStep806 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded806 :: rest) 865484 beforeFfis806 beforeShmem806 = LabToTarget.getShmemInfo rest 866132 afterFfis806 afterShmem806 := by
  rw [getShmemInfo_section, walkStep806]
theorem symbolLength806 : LabToTarget.secLength Padded806.lines 0 = 648 := by
  kernel_rfl
#print axioms shmemStep806
#print axioms symbolLength806
end InitECandidate.Proofs.BackendStages.Metadata
