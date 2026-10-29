import InitECandidate.Proofs.BackendStages.Metadata.Data596
import InitECandidate.Proofs.BackendStages.Padded596
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem walkStep596 : walkShmemLines Padded596.lines 468856 beforeFfis596 beforeShmem596 = (469364, afterFfis596, afterShmem596) := by
  kernel_rfl
theorem shmemStep596 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded596 :: rest) 468856 beforeFfis596 beforeShmem596 = LabToTarget.getShmemInfo rest 469364 afterFfis596 afterShmem596 := by
  rw [getShmemInfo_section, walkStep596]
theorem symbolLength596 : LabToTarget.secLength Padded596.lines 0 = 508 := by
  kernel_rfl
#print axioms shmemStep596
#print axioms symbolLength596
end InitECandidate.Proofs.BackendStages.Metadata
