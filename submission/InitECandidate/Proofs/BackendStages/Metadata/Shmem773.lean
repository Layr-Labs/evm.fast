import InitECandidate.Proofs.BackendStages.Metadata.Data773
import InitECandidate.Proofs.BackendStages.Padded773
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem walkStep773 : walkShmemLines Padded773.lines 786108 beforeFfis773 beforeShmem773 = (787192, afterFfis773, afterShmem773) := by
  kernel_rfl
theorem shmemStep773 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded773 :: rest) 786108 beforeFfis773 beforeShmem773 = LabToTarget.getShmemInfo rest 787192 afterFfis773 afterShmem773 := by
  rw [getShmemInfo_section, walkStep773]
theorem symbolLength773 : LabToTarget.secLength Padded773.lines 0 = 1084 := by
  kernel_rfl
#print axioms shmemStep773
#print axioms symbolLength773
end InitECandidate.Proofs.BackendStages.Metadata
