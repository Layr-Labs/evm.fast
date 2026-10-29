import InitECandidate.Proofs.BackendStages.Metadata.Data591
import InitECandidate.Proofs.BackendStages.Padded591
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem walkStep591 : walkShmemLines Padded591.lines 448084 beforeFfis591 beforeShmem591 = (448808, afterFfis591, afterShmem591) := by
  kernel_rfl
theorem shmemStep591 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded591 :: rest) 448084 beforeFfis591 beforeShmem591 = LabToTarget.getShmemInfo rest 448808 afterFfis591 afterShmem591 := by
  rw [getShmemInfo_section, walkStep591]
theorem symbolLength591 : LabToTarget.secLength Padded591.lines 0 = 724 := by
  kernel_rfl
#print axioms shmemStep591
#print axioms symbolLength591
end InitECandidate.Proofs.BackendStages.Metadata
