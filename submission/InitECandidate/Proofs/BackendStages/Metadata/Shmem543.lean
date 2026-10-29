import InitECandidate.Proofs.BackendStages.Metadata.Data543
import InitECandidate.Proofs.BackendStages.Padded543
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem walkStep543 : walkShmemLines Padded543.lines 400956 beforeFfis543 beforeShmem543 = (401564, afterFfis543, afterShmem543) := by
  kernel_rfl
theorem shmemStep543 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded543 :: rest) 400956 beforeFfis543 beforeShmem543 = LabToTarget.getShmemInfo rest 401564 afterFfis543 afterShmem543 := by
  rw [getShmemInfo_section, walkStep543]
theorem symbolLength543 : LabToTarget.secLength Padded543.lines 0 = 608 := by
  kernel_rfl
#print axioms shmemStep543
#print axioms symbolLength543
end InitECandidate.Proofs.BackendStages.Metadata
