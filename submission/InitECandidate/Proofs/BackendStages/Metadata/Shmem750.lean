import InitECandidate.Proofs.BackendStages.Metadata.Data750
import InitECandidate.Proofs.BackendStages.Padded750
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem walkStep750 : walkShmemLines Padded750.lines 747120 beforeFfis750 beforeShmem750 = (747568, afterFfis750, afterShmem750) := by
  kernel_rfl
theorem shmemStep750 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded750 :: rest) 747120 beforeFfis750 beforeShmem750 = LabToTarget.getShmemInfo rest 747568 afterFfis750 afterShmem750 := by
  rw [getShmemInfo_section, walkStep750]
theorem symbolLength750 : LabToTarget.secLength Padded750.lines 0 = 448 := by
  kernel_rfl
#print axioms shmemStep750
#print axioms symbolLength750
end InitECandidate.Proofs.BackendStages.Metadata
