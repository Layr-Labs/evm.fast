import InitECandidate.Proofs.BackendStages.Metadata.Data841
import InitECandidate.Proofs.BackendStages.Padded841
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem walkStep841 : walkShmemLines Padded841.lines 910700 beforeFfis841 beforeShmem841 = (910792, afterFfis841, afterShmem841) := by
  kernel_rfl
theorem shmemStep841 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded841 :: rest) 910700 beforeFfis841 beforeShmem841 = LabToTarget.getShmemInfo rest 910792 afterFfis841 afterShmem841 := by
  rw [getShmemInfo_section, walkStep841]
theorem symbolLength841 : LabToTarget.secLength Padded841.lines 0 = 92 := by
  kernel_rfl
#print axioms shmemStep841
#print axioms symbolLength841
end InitECandidate.Proofs.BackendStages.Metadata
