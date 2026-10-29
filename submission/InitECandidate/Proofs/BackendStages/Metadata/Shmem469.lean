import InitECandidate.Proofs.BackendStages.Metadata.Data469
import InitECandidate.Proofs.BackendStages.Padded469
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem walkStep469 : walkShmemLines Padded469.lines 357968 beforeFfis469 beforeShmem469 = (358016, afterFfis469, afterShmem469) := by
  kernel_rfl
theorem shmemStep469 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded469 :: rest) 357968 beforeFfis469 beforeShmem469 = LabToTarget.getShmemInfo rest 358016 afterFfis469 afterShmem469 := by
  rw [getShmemInfo_section, walkStep469]
theorem symbolLength469 : LabToTarget.secLength Padded469.lines 0 = 48 := by
  kernel_rfl
#print axioms shmemStep469
#print axioms symbolLength469
end InitECandidate.Proofs.BackendStages.Metadata
