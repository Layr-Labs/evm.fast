import InitECandidate.Proofs.BackendStages.Metadata.Data572
import InitECandidate.Proofs.BackendStages.Padded572
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem walkStep572 : walkShmemLines Padded572.lines 429128 beforeFfis572 beforeShmem572 = (429156, afterFfis572, afterShmem572) := by
  kernel_rfl
theorem shmemStep572 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded572 :: rest) 429128 beforeFfis572 beforeShmem572 = LabToTarget.getShmemInfo rest 429156 afterFfis572 afterShmem572 := by
  rw [getShmemInfo_section, walkStep572]
theorem symbolLength572 : LabToTarget.secLength Padded572.lines 0 = 28 := by
  kernel_rfl
#print axioms shmemStep572
#print axioms symbolLength572
end InitECandidate.Proofs.BackendStages.Metadata
