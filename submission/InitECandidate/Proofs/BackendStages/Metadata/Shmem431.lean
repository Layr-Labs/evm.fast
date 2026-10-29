import InitECandidate.Proofs.BackendStages.Metadata.Data431
import InitECandidate.Proofs.BackendStages.Padded431
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem walkStep431 : walkShmemLines Padded431.lines 319836 beforeFfis431 beforeShmem431 = (320936, afterFfis431, afterShmem431) := by
  kernel_rfl
theorem shmemStep431 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded431 :: rest) 319836 beforeFfis431 beforeShmem431 = LabToTarget.getShmemInfo rest 320936 afterFfis431 afterShmem431 := by
  rw [getShmemInfo_section, walkStep431]
theorem symbolLength431 : LabToTarget.secLength Padded431.lines 0 = 1100 := by
  kernel_rfl
#print axioms shmemStep431
#print axioms symbolLength431
end InitECandidate.Proofs.BackendStages.Metadata
