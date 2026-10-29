import InitECandidate.Proofs.BackendStages.Metadata.Data236
import InitECandidate.Proofs.BackendStages.Padded236
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem walkStep236 : walkShmemLines Padded236.lines 173336 beforeFfis236 beforeShmem236 = (173808, afterFfis236, afterShmem236) := by
  kernel_rfl
theorem shmemStep236 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded236 :: rest) 173336 beforeFfis236 beforeShmem236 = LabToTarget.getShmemInfo rest 173808 afterFfis236 afterShmem236 := by
  rw [getShmemInfo_section, walkStep236]
theorem symbolLength236 : LabToTarget.secLength Padded236.lines 0 = 472 := by
  kernel_rfl
#print axioms shmemStep236
#print axioms symbolLength236
end InitECandidate.Proofs.BackendStages.Metadata
