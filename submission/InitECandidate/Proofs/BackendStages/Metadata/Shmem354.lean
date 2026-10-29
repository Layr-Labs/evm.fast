import InitECandidate.Proofs.BackendStages.Metadata.Data354
import InitECandidate.Proofs.BackendStages.Padded354
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem walkStep354 : walkShmemLines Padded354.lines 276544 beforeFfis354 beforeShmem354 = (276572, afterFfis354, afterShmem354) := by
  kernel_rfl
theorem shmemStep354 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded354 :: rest) 276544 beforeFfis354 beforeShmem354 = LabToTarget.getShmemInfo rest 276572 afterFfis354 afterShmem354 := by
  rw [getShmemInfo_section, walkStep354]
theorem symbolLength354 : LabToTarget.secLength Padded354.lines 0 = 28 := by
  kernel_rfl
#print axioms shmemStep354
#print axioms symbolLength354
end InitECandidate.Proofs.BackendStages.Metadata
