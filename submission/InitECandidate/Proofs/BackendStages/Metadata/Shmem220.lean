import InitECandidate.Proofs.BackendStages.Metadata.Data220
import InitECandidate.Proofs.BackendStages.Padded220
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem walkStep220 : walkShmemLines Padded220.lines 125244 beforeFfis220 beforeShmem220 = (125356, afterFfis220, afterShmem220) := by
  kernel_rfl
theorem shmemStep220 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded220 :: rest) 125244 beforeFfis220 beforeShmem220 = LabToTarget.getShmemInfo rest 125356 afterFfis220 afterShmem220 := by
  rw [getShmemInfo_section, walkStep220]
theorem symbolLength220 : LabToTarget.secLength Padded220.lines 0 = 112 := by
  kernel_rfl
#print axioms shmemStep220
#print axioms symbolLength220
end InitECandidate.Proofs.BackendStages.Metadata
