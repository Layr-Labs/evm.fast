import InitECandidate.Proofs.BackendStages.Metadata.Data701
import InitECandidate.Proofs.BackendStages.Padded701
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem walkStep701 : walkShmemLines Padded701.lines 664084 beforeFfis701 beforeShmem701 = (665060, afterFfis701, afterShmem701) := by
  kernel_rfl
theorem shmemStep701 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded701 :: rest) 664084 beforeFfis701 beforeShmem701 = LabToTarget.getShmemInfo rest 665060 afterFfis701 afterShmem701 := by
  rw [getShmemInfo_section, walkStep701]
theorem symbolLength701 : LabToTarget.secLength Padded701.lines 0 = 976 := by
  kernel_rfl
#print axioms shmemStep701
#print axioms symbolLength701
end InitECandidate.Proofs.BackendStages.Metadata
