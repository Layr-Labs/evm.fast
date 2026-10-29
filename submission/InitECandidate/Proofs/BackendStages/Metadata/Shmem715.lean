import InitECandidate.Proofs.BackendStages.Metadata.Data715
import InitECandidate.Proofs.BackendStages.Padded715
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem walkStep715 : walkShmemLines Padded715.lines 722724 beforeFfis715 beforeShmem715 = (722752, afterFfis715, afterShmem715) := by
  kernel_rfl
theorem shmemStep715 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded715 :: rest) 722724 beforeFfis715 beforeShmem715 = LabToTarget.getShmemInfo rest 722752 afterFfis715 afterShmem715 := by
  rw [getShmemInfo_section, walkStep715]
theorem symbolLength715 : LabToTarget.secLength Padded715.lines 0 = 28 := by
  kernel_rfl
#print axioms shmemStep715
#print axioms symbolLength715
end InitECandidate.Proofs.BackendStages.Metadata
