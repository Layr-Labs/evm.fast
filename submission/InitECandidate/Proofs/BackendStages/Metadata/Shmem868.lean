import InitECandidate.Proofs.BackendStages.Metadata.Data868
import InitECandidate.Proofs.BackendStages.Padded868
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem walkStep868 : walkShmemLines Padded868.lines 968200 beforeFfis868 beforeShmem868 = (974804, afterFfis868, afterShmem868) := by
  kernel_rfl
theorem shmemStep868 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded868 :: rest) 968200 beforeFfis868 beforeShmem868 = LabToTarget.getShmemInfo rest 974804 afterFfis868 afterShmem868 := by
  rw [getShmemInfo_section, walkStep868]
theorem symbolLength868 : LabToTarget.secLength Padded868.lines 0 = 6604 := by
  kernel_rfl
#print axioms shmemStep868
#print axioms symbolLength868
end InitECandidate.Proofs.BackendStages.Metadata
