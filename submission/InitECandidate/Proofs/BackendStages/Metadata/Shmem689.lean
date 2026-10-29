import InitECandidate.Proofs.BackendStages.Metadata.Data689
import InitECandidate.Proofs.BackendStages.Padded689
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem walkStep689 : walkShmemLines Padded689.lines 630320 beforeFfis689 beforeShmem689 = (630588, afterFfis689, afterShmem689) := by
  kernel_rfl
theorem shmemStep689 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded689 :: rest) 630320 beforeFfis689 beforeShmem689 = LabToTarget.getShmemInfo rest 630588 afterFfis689 afterShmem689 := by
  rw [getShmemInfo_section, walkStep689]
theorem symbolLength689 : LabToTarget.secLength Padded689.lines 0 = 268 := by
  kernel_rfl
#print axioms shmemStep689
#print axioms symbolLength689
end InitECandidate.Proofs.BackendStages.Metadata
