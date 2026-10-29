import InitECandidate.Proofs.BackendStages.Metadata.Data842
import InitECandidate.Proofs.BackendStages.Padded842
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem walkStep842 : walkShmemLines Padded842.lines 910792 beforeFfis842 beforeShmem842 = (912180, afterFfis842, afterShmem842) := by
  kernel_rfl
theorem shmemStep842 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded842 :: rest) 910792 beforeFfis842 beforeShmem842 = LabToTarget.getShmemInfo rest 912180 afterFfis842 afterShmem842 := by
  rw [getShmemInfo_section, walkStep842]
theorem symbolLength842 : LabToTarget.secLength Padded842.lines 0 = 1388 := by
  kernel_rfl
#print axioms shmemStep842
#print axioms symbolLength842
end InitECandidate.Proofs.BackendStages.Metadata
