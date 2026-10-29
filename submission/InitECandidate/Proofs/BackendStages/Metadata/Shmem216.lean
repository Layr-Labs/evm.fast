import InitECandidate.Proofs.BackendStages.Metadata.Data216
import InitECandidate.Proofs.BackendStages.Padded216
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem walkStep216 : walkShmemLines Padded216.lines 124004 beforeFfis216 beforeShmem216 = (124064, afterFfis216, afterShmem216) := by
  kernel_rfl
theorem shmemStep216 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded216 :: rest) 124004 beforeFfis216 beforeShmem216 = LabToTarget.getShmemInfo rest 124064 afterFfis216 afterShmem216 := by
  rw [getShmemInfo_section, walkStep216]
theorem symbolLength216 : LabToTarget.secLength Padded216.lines 0 = 60 := by
  kernel_rfl
#print axioms shmemStep216
#print axioms symbolLength216
end InitECandidate.Proofs.BackendStages.Metadata
