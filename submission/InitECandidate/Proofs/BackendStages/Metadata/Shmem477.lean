import InitECandidate.Proofs.BackendStages.Metadata.Data477
import InitECandidate.Proofs.BackendStages.Padded477
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem walkStep477 : walkShmemLines Padded477.lines 359464 beforeFfis477 beforeShmem477 = (359616, afterFfis477, afterShmem477) := by
  kernel_rfl
theorem shmemStep477 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded477 :: rest) 359464 beforeFfis477 beforeShmem477 = LabToTarget.getShmemInfo rest 359616 afterFfis477 afterShmem477 := by
  rw [getShmemInfo_section, walkStep477]
theorem symbolLength477 : LabToTarget.secLength Padded477.lines 0 = 152 := by
  kernel_rfl
#print axioms shmemStep477
#print axioms symbolLength477
end InitECandidate.Proofs.BackendStages.Metadata
