import InitECandidate.Proofs.BackendStages.Metadata.Data151
import InitECandidate.Proofs.BackendStages.Padded151
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem walkStep151 : walkShmemLines Padded151.lines 33272 beforeFfis151 beforeShmem151 = (51600, afterFfis151, afterShmem151) := by
  kernel_rfl
theorem shmemStep151 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded151 :: rest) 33272 beforeFfis151 beforeShmem151 = LabToTarget.getShmemInfo rest 51600 afterFfis151 afterShmem151 := by
  rw [getShmemInfo_section, walkStep151]
theorem symbolLength151 : LabToTarget.secLength Padded151.lines 0 = 18328 := by
  kernel_rfl
#print axioms shmemStep151
#print axioms symbolLength151
end InitECandidate.Proofs.BackendStages.Metadata
