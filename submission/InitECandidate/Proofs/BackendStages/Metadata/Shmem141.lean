import InitECandidate.Proofs.BackendStages.Metadata.Data141
import InitECandidate.Proofs.BackendStages.Padded141
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem walkStep141 : walkShmemLines Padded141.lines 28424 beforeFfis141 beforeShmem141 = (28668, afterFfis141, afterShmem141) := by
  kernel_rfl
theorem shmemStep141 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded141 :: rest) 28424 beforeFfis141 beforeShmem141 = LabToTarget.getShmemInfo rest 28668 afterFfis141 afterShmem141 := by
  rw [getShmemInfo_section, walkStep141]
theorem symbolLength141 : LabToTarget.secLength Padded141.lines 0 = 244 := by
  kernel_rfl
#print axioms shmemStep141
#print axioms symbolLength141
end InitECandidate.Proofs.BackendStages.Metadata
