import InitECandidate.Proofs.BackendStages.Metadata.Data460
import InitECandidate.Proofs.BackendStages.Padded460
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem walkStep460 : walkShmemLines Padded460.lines 352796 beforeFfis460 beforeShmem460 = (355768, afterFfis460, afterShmem460) := by
  kernel_rfl
theorem shmemStep460 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded460 :: rest) 352796 beforeFfis460 beforeShmem460 = LabToTarget.getShmemInfo rest 355768 afterFfis460 afterShmem460 := by
  rw [getShmemInfo_section, walkStep460]
theorem symbolLength460 : LabToTarget.secLength Padded460.lines 0 = 2972 := by
  kernel_rfl
#print axioms shmemStep460
#print axioms symbolLength460
end InitECandidate.Proofs.BackendStages.Metadata
