import InitECandidate.Proofs.BackendStages.Metadata.Data714
import InitECandidate.Proofs.BackendStages.Padded714
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem walkStep714 : walkShmemLines Padded714.lines 704604 beforeFfis714 beforeShmem714 = (722724, afterFfis714, afterShmem714) := by
  kernel_rfl
theorem shmemStep714 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded714 :: rest) 704604 beforeFfis714 beforeShmem714 = LabToTarget.getShmemInfo rest 722724 afterFfis714 afterShmem714 := by
  rw [getShmemInfo_section, walkStep714]
theorem symbolLength714 : LabToTarget.secLength Padded714.lines 0 = 18120 := by
  kernel_rfl
#print axioms shmemStep714
#print axioms symbolLength714
end InitECandidate.Proofs.BackendStages.Metadata
