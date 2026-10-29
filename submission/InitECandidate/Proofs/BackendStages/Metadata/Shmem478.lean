import InitECandidate.Proofs.BackendStages.Metadata.Data478
import InitECandidate.Proofs.BackendStages.Padded478
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem walkStep478 : walkShmemLines Padded478.lines 359616 beforeFfis478 beforeShmem478 = (359912, afterFfis478, afterShmem478) := by
  kernel_rfl
theorem shmemStep478 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded478 :: rest) 359616 beforeFfis478 beforeShmem478 = LabToTarget.getShmemInfo rest 359912 afterFfis478 afterShmem478 := by
  rw [getShmemInfo_section, walkStep478]
theorem symbolLength478 : LabToTarget.secLength Padded478.lines 0 = 296 := by
  kernel_rfl
#print axioms shmemStep478
#print axioms symbolLength478
end InitECandidate.Proofs.BackendStages.Metadata
