import InitECandidate.Proofs.BackendStages.Metadata.Data405
import InitECandidate.Proofs.BackendStages.Padded405
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem walkStep405 : walkShmemLines Padded405.lines 306524 beforeFfis405 beforeShmem405 = (306788, afterFfis405, afterShmem405) := by
  kernel_rfl
theorem shmemStep405 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded405 :: rest) 306524 beforeFfis405 beforeShmem405 = LabToTarget.getShmemInfo rest 306788 afterFfis405 afterShmem405 := by
  rw [getShmemInfo_section, walkStep405]
theorem symbolLength405 : LabToTarget.secLength Padded405.lines 0 = 264 := by
  kernel_rfl
#print axioms shmemStep405
#print axioms symbolLength405
end InitECandidate.Proofs.BackendStages.Metadata
