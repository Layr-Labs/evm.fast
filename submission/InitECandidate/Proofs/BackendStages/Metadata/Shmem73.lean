import InitECandidate.Proofs.BackendStages.Metadata.Data73
import InitECandidate.Proofs.BackendStages.Padded73
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem walkStep73 : walkShmemLines Padded73.lines 5856 beforeFfis73 beforeShmem73 = (5884, afterFfis73, afterShmem73) := by
  kernel_rfl
theorem shmemStep73 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded73 :: rest) 5856 beforeFfis73 beforeShmem73 = LabToTarget.getShmemInfo rest 5884 afterFfis73 afterShmem73 := by
  rw [getShmemInfo_section, walkStep73]
theorem symbolLength73 : LabToTarget.secLength Padded73.lines 0 = 28 := by
  kernel_rfl
#print axioms shmemStep73
#print axioms symbolLength73
end InitECandidate.Proofs.BackendStages.Metadata
