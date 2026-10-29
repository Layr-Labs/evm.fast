import InitECandidate.Proofs.BackendStages.Metadata.Data116
import InitECandidate.Proofs.BackendStages.Padded116
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem walkStep116 : walkShmemLines Padded116.lines 11948 beforeFfis116 beforeShmem116 = (12056, afterFfis116, afterShmem116) := by
  kernel_rfl
theorem shmemStep116 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded116 :: rest) 11948 beforeFfis116 beforeShmem116 = LabToTarget.getShmemInfo rest 12056 afterFfis116 afterShmem116 := by
  rw [getShmemInfo_section, walkStep116]
theorem symbolLength116 : LabToTarget.secLength Padded116.lines 0 = 108 := by
  kernel_rfl
#print axioms shmemStep116
#print axioms symbolLength116
end InitECandidate.Proofs.BackendStages.Metadata
