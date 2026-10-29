import InitECandidate.Proofs.BackendStages.Metadata.Data555
import InitECandidate.Proofs.BackendStages.Padded555
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem walkStep555 : walkShmemLines Padded555.lines 414852 beforeFfis555 beforeShmem555 = (415336, afterFfis555, afterShmem555) := by
  kernel_rfl
theorem shmemStep555 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded555 :: rest) 414852 beforeFfis555 beforeShmem555 = LabToTarget.getShmemInfo rest 415336 afterFfis555 afterShmem555 := by
  rw [getShmemInfo_section, walkStep555]
theorem symbolLength555 : LabToTarget.secLength Padded555.lines 0 = 484 := by
  kernel_rfl
#print axioms shmemStep555
#print axioms symbolLength555
end InitECandidate.Proofs.BackendStages.Metadata
