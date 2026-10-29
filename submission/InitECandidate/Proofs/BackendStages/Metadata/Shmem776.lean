import InitECandidate.Proofs.BackendStages.Metadata.Data776
import InitECandidate.Proofs.BackendStages.Padded776
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem walkStep776 : walkShmemLines Padded776.lines 789256 beforeFfis776 beforeShmem776 = (790040, afterFfis776, afterShmem776) := by
  kernel_rfl
theorem shmemStep776 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded776 :: rest) 789256 beforeFfis776 beforeShmem776 = LabToTarget.getShmemInfo rest 790040 afterFfis776 afterShmem776 := by
  rw [getShmemInfo_section, walkStep776]
theorem symbolLength776 : LabToTarget.secLength Padded776.lines 0 = 784 := by
  kernel_rfl
#print axioms shmemStep776
#print axioms symbolLength776
end InitECandidate.Proofs.BackendStages.Metadata
