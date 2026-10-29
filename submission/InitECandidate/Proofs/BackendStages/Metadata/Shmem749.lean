import InitECandidate.Proofs.BackendStages.Metadata.Data749
import InitECandidate.Proofs.BackendStages.Padded749
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem walkStep749 : walkShmemLines Padded749.lines 746672 beforeFfis749 beforeShmem749 = (747120, afterFfis749, afterShmem749) := by
  kernel_rfl
theorem shmemStep749 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded749 :: rest) 746672 beforeFfis749 beforeShmem749 = LabToTarget.getShmemInfo rest 747120 afterFfis749 afterShmem749 := by
  rw [getShmemInfo_section, walkStep749]
theorem symbolLength749 : LabToTarget.secLength Padded749.lines 0 = 448 := by
  kernel_rfl
#print axioms shmemStep749
#print axioms symbolLength749
end InitECandidate.Proofs.BackendStages.Metadata
