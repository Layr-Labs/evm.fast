import InitECandidate.Proofs.BackendStages.Metadata.Data823
import InitECandidate.Proofs.BackendStages.Padded823
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem walkStep823 : walkShmemLines Padded823.lines 892204 beforeFfis823 beforeShmem823 = (892712, afterFfis823, afterShmem823) := by
  kernel_rfl
theorem shmemStep823 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded823 :: rest) 892204 beforeFfis823 beforeShmem823 = LabToTarget.getShmemInfo rest 892712 afterFfis823 afterShmem823 := by
  rw [getShmemInfo_section, walkStep823]
theorem symbolLength823 : LabToTarget.secLength Padded823.lines 0 = 508 := by
  kernel_rfl
#print axioms shmemStep823
#print axioms symbolLength823
end InitECandidate.Proofs.BackendStages.Metadata
