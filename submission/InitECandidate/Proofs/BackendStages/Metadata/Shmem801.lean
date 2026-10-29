import InitECandidate.Proofs.BackendStages.Metadata.Data801
import InitECandidate.Proofs.BackendStages.Padded801
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem walkStep801 : walkShmemLines Padded801.lines 849808 beforeFfis801 beforeShmem801 = (857148, afterFfis801, afterShmem801) := by
  kernel_rfl
theorem shmemStep801 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded801 :: rest) 849808 beforeFfis801 beforeShmem801 = LabToTarget.getShmemInfo rest 857148 afterFfis801 afterShmem801 := by
  rw [getShmemInfo_section, walkStep801]
theorem symbolLength801 : LabToTarget.secLength Padded801.lines 0 = 7340 := by
  kernel_rfl
#print axioms shmemStep801
#print axioms symbolLength801
end InitECandidate.Proofs.BackendStages.Metadata
