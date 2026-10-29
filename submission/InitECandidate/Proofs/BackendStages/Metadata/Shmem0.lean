import InitECandidate.Proofs.BackendStages.Metadata.Data0
import InitECandidate.Proofs.BackendStages.Padded0
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem walkStep0 : walkShmemLines Padded0.lines 0 beforeFfis0 beforeShmem0 = (756, afterFfis0, afterShmem0) := by
  kernel_rfl
theorem shmemStep0 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded0 :: rest) 0 beforeFfis0 beforeShmem0 = LabToTarget.getShmemInfo rest 756 afterFfis0 afterShmem0 := by
  rw [getShmemInfo_section, walkStep0]
theorem symbolLength0 : LabToTarget.secLength Padded0.lines 0 = 756 := by
  kernel_rfl
#print axioms shmemStep0
#print axioms symbolLength0
end InitECandidate.Proofs.BackendStages.Metadata
