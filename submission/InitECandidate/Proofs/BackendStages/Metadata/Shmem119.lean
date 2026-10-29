import InitECandidate.Proofs.BackendStages.Metadata.Data119
import InitECandidate.Proofs.BackendStages.Padded119
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem walkStep119 : walkShmemLines Padded119.lines 12320 beforeFfis119 beforeShmem119 = (12564, afterFfis119, afterShmem119) := by
  kernel_rfl
theorem shmemStep119 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded119 :: rest) 12320 beforeFfis119 beforeShmem119 = LabToTarget.getShmemInfo rest 12564 afterFfis119 afterShmem119 := by
  rw [getShmemInfo_section, walkStep119]
theorem symbolLength119 : LabToTarget.secLength Padded119.lines 0 = 244 := by
  kernel_rfl
#print axioms shmemStep119
#print axioms symbolLength119
end InitECandidate.Proofs.BackendStages.Metadata
