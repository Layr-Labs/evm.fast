import InitECandidate.Proofs.BackendStages.Metadata.Data184
import InitECandidate.Proofs.BackendStages.Padded184
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem walkStep184 : walkShmemLines Padded184.lines 99208 beforeFfis184 beforeShmem184 = (99352, afterFfis184, afterShmem184) := by
  kernel_rfl
theorem shmemStep184 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded184 :: rest) 99208 beforeFfis184 beforeShmem184 = LabToTarget.getShmemInfo rest 99352 afterFfis184 afterShmem184 := by
  rw [getShmemInfo_section, walkStep184]
theorem symbolLength184 : LabToTarget.secLength Padded184.lines 0 = 144 := by
  kernel_rfl
#print axioms shmemStep184
#print axioms symbolLength184
end InitECandidate.Proofs.BackendStages.Metadata
