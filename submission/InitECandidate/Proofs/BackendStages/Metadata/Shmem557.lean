import InitECandidate.Proofs.BackendStages.Metadata.Data557
import InitECandidate.Proofs.BackendStages.Padded557
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem walkStep557 : walkShmemLines Padded557.lines 415816 beforeFfis557 beforeShmem557 = (416200, afterFfis557, afterShmem557) := by
  kernel_rfl
theorem shmemStep557 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded557 :: rest) 415816 beforeFfis557 beforeShmem557 = LabToTarget.getShmemInfo rest 416200 afterFfis557 afterShmem557 := by
  rw [getShmemInfo_section, walkStep557]
theorem symbolLength557 : LabToTarget.secLength Padded557.lines 0 = 384 := by
  kernel_rfl
#print axioms shmemStep557
#print axioms symbolLength557
end InitECandidate.Proofs.BackendStages.Metadata
