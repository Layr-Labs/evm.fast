import InitECandidate.Proofs.BackendStages.Metadata.Data493
import InitECandidate.Proofs.BackendStages.Padded493
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem walkStep493 : walkShmemLines Padded493.lines 366760 beforeFfis493 beforeShmem493 = (366928, afterFfis493, afterShmem493) := by
  kernel_rfl
theorem shmemStep493 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded493 :: rest) 366760 beforeFfis493 beforeShmem493 = LabToTarget.getShmemInfo rest 366928 afterFfis493 afterShmem493 := by
  rw [getShmemInfo_section, walkStep493]
theorem symbolLength493 : LabToTarget.secLength Padded493.lines 0 = 168 := by
  kernel_rfl
#print axioms shmemStep493
#print axioms symbolLength493
end InitECandidate.Proofs.BackendStages.Metadata
