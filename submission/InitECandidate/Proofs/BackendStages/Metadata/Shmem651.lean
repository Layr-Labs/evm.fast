import InitECandidate.Proofs.BackendStages.Metadata.Data651
import InitECandidate.Proofs.BackendStages.Padded651
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem walkStep651 : walkShmemLines Padded651.lines 560384 beforeFfis651 beforeShmem651 = (566704, afterFfis651, afterShmem651) := by
  kernel_rfl
theorem shmemStep651 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded651 :: rest) 560384 beforeFfis651 beforeShmem651 = LabToTarget.getShmemInfo rest 566704 afterFfis651 afterShmem651 := by
  rw [getShmemInfo_section, walkStep651]
theorem symbolLength651 : LabToTarget.secLength Padded651.lines 0 = 6320 := by
  kernel_rfl
#print axioms shmemStep651
#print axioms symbolLength651
end InitECandidate.Proofs.BackendStages.Metadata
