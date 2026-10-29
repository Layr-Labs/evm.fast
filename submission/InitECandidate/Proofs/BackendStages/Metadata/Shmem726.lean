import InitECandidate.Proofs.BackendStages.Metadata.Data726
import InitECandidate.Proofs.BackendStages.Padded726
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem walkStep726 : walkShmemLines Padded726.lines 730936 beforeFfis726 beforeShmem726 = (731828, afterFfis726, afterShmem726) := by
  kernel_rfl
theorem shmemStep726 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded726 :: rest) 730936 beforeFfis726 beforeShmem726 = LabToTarget.getShmemInfo rest 731828 afterFfis726 afterShmem726 := by
  rw [getShmemInfo_section, walkStep726]
theorem symbolLength726 : LabToTarget.secLength Padded726.lines 0 = 892 := by
  kernel_rfl
#print axioms shmemStep726
#print axioms symbolLength726
end InitECandidate.Proofs.BackendStages.Metadata
