import InitECandidate.Proofs.BackendStages.Metadata.Data636
import InitECandidate.Proofs.BackendStages.Padded636
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem walkStep636 : walkShmemLines Padded636.lines 531868 beforeFfis636 beforeShmem636 = (531964, afterFfis636, afterShmem636) := by
  kernel_rfl
theorem shmemStep636 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded636 :: rest) 531868 beforeFfis636 beforeShmem636 = LabToTarget.getShmemInfo rest 531964 afterFfis636 afterShmem636 := by
  rw [getShmemInfo_section, walkStep636]
theorem symbolLength636 : LabToTarget.secLength Padded636.lines 0 = 96 := by
  kernel_rfl
#print axioms shmemStep636
#print axioms symbolLength636
end InitECandidate.Proofs.BackendStages.Metadata
