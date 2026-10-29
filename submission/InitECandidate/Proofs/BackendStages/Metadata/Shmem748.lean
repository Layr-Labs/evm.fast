import InitECandidate.Proofs.BackendStages.Metadata.Data748
import InitECandidate.Proofs.BackendStages.Padded748
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem walkStep748 : walkShmemLines Padded748.lines 746288 beforeFfis748 beforeShmem748 = (746672, afterFfis748, afterShmem748) := by
  kernel_rfl
theorem shmemStep748 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded748 :: rest) 746288 beforeFfis748 beforeShmem748 = LabToTarget.getShmemInfo rest 746672 afterFfis748 afterShmem748 := by
  rw [getShmemInfo_section, walkStep748]
theorem symbolLength748 : LabToTarget.secLength Padded748.lines 0 = 384 := by
  kernel_rfl
#print axioms shmemStep748
#print axioms symbolLength748
end InitECandidate.Proofs.BackendStages.Metadata
