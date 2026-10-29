import InitECandidate.Proofs.BackendStages.Metadata.Data877
import InitECandidate.Proofs.BackendStages.Padded877
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem walkStep877 : walkShmemLines Padded877.lines 978936 beforeFfis877 beforeShmem877 = (979140, afterFfis877, afterShmem877) := by
  kernel_rfl
theorem shmemStep877 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded877 :: rest) 978936 beforeFfis877 beforeShmem877 = LabToTarget.getShmemInfo rest 979140 afterFfis877 afterShmem877 := by
  rw [getShmemInfo_section, walkStep877]
theorem symbolLength877 : LabToTarget.secLength Padded877.lines 0 = 204 := by
  kernel_rfl
#print axioms shmemStep877
#print axioms symbolLength877
end InitECandidate.Proofs.BackendStages.Metadata
