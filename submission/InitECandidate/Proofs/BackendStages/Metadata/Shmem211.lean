import InitECandidate.Proofs.BackendStages.Metadata.Data211
import InitECandidate.Proofs.BackendStages.Padded211
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem walkStep211 : walkShmemLines Padded211.lines 122984 beforeFfis211 beforeShmem211 = (123264, afterFfis211, afterShmem211) := by
  kernel_rfl
theorem shmemStep211 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded211 :: rest) 122984 beforeFfis211 beforeShmem211 = LabToTarget.getShmemInfo rest 123264 afterFfis211 afterShmem211 := by
  rw [getShmemInfo_section, walkStep211]
theorem symbolLength211 : LabToTarget.secLength Padded211.lines 0 = 280 := by
  kernel_rfl
#print axioms shmemStep211
#print axioms symbolLength211
end InitECandidate.Proofs.BackendStages.Metadata
