import InitECandidate.Proofs.BackendStages.Metadata.Data625
import InitECandidate.Proofs.BackendStages.Padded625
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem walkStep625 : walkShmemLines Padded625.lines 521612 beforeFfis625 beforeShmem625 = (522712, afterFfis625, afterShmem625) := by
  kernel_rfl
theorem shmemStep625 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded625 :: rest) 521612 beforeFfis625 beforeShmem625 = LabToTarget.getShmemInfo rest 522712 afterFfis625 afterShmem625 := by
  rw [getShmemInfo_section, walkStep625]
theorem symbolLength625 : LabToTarget.secLength Padded625.lines 0 = 1100 := by
  kernel_rfl
#print axioms shmemStep625
#print axioms symbolLength625
end InitECandidate.Proofs.BackendStages.Metadata
