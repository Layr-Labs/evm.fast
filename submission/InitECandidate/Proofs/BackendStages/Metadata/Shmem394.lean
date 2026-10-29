import InitECandidate.Proofs.BackendStages.Metadata.Data394
import InitECandidate.Proofs.BackendStages.Padded394
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem walkStep394 : walkShmemLines Padded394.lines 301488 beforeFfis394 beforeShmem394 = (301668, afterFfis394, afterShmem394) := by
  kernel_rfl
theorem shmemStep394 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded394 :: rest) 301488 beforeFfis394 beforeShmem394 = LabToTarget.getShmemInfo rest 301668 afterFfis394 afterShmem394 := by
  rw [getShmemInfo_section, walkStep394]
theorem symbolLength394 : LabToTarget.secLength Padded394.lines 0 = 180 := by
  kernel_rfl
#print axioms shmemStep394
#print axioms symbolLength394
end InitECandidate.Proofs.BackendStages.Metadata
