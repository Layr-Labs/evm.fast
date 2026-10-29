import InitECandidate.Proofs.BackendStages.Metadata.Data79
import InitECandidate.Proofs.BackendStages.Padded79
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem walkStep79 : walkShmemLines Padded79.lines 6936 beforeFfis79 beforeShmem79 = (7976, afterFfis79, afterShmem79) := by
  kernel_rfl
theorem shmemStep79 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded79 :: rest) 6936 beforeFfis79 beforeShmem79 = LabToTarget.getShmemInfo rest 7976 afterFfis79 afterShmem79 := by
  rw [getShmemInfo_section, walkStep79]
theorem symbolLength79 : LabToTarget.secLength Padded79.lines 0 = 1040 := by
  kernel_rfl
#print axioms shmemStep79
#print axioms symbolLength79
end InitECandidate.Proofs.BackendStages.Metadata
