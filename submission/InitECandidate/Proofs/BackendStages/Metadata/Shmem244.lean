import InitECandidate.Proofs.BackendStages.Metadata.Data244
import InitECandidate.Proofs.BackendStages.Padded244
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem walkStep244 : walkShmemLines Padded244.lines 178840 beforeFfis244 beforeShmem244 = (179124, afterFfis244, afterShmem244) := by
  kernel_rfl
theorem shmemStep244 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded244 :: rest) 178840 beforeFfis244 beforeShmem244 = LabToTarget.getShmemInfo rest 179124 afterFfis244 afterShmem244 := by
  rw [getShmemInfo_section, walkStep244]
theorem symbolLength244 : LabToTarget.secLength Padded244.lines 0 = 284 := by
  kernel_rfl
#print axioms shmemStep244
#print axioms symbolLength244
end InitECandidate.Proofs.BackendStages.Metadata
