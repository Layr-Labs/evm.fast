import InitECandidate.Proofs.BackendStages.Metadata.Data623
import InitECandidate.Proofs.BackendStages.Padded623
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem walkStep623 : walkShmemLines Padded623.lines 511292 beforeFfis623 beforeShmem623 = (516472, afterFfis623, afterShmem623) := by
  kernel_rfl
theorem shmemStep623 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded623 :: rest) 511292 beforeFfis623 beforeShmem623 = LabToTarget.getShmemInfo rest 516472 afterFfis623 afterShmem623 := by
  rw [getShmemInfo_section, walkStep623]
theorem symbolLength623 : LabToTarget.secLength Padded623.lines 0 = 5180 := by
  kernel_rfl
#print axioms shmemStep623
#print axioms symbolLength623
end InitECandidate.Proofs.BackendStages.Metadata
