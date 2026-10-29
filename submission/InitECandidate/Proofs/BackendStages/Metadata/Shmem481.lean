import InitECandidate.Proofs.BackendStages.Metadata.Data481
import InitECandidate.Proofs.BackendStages.Padded481
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem walkStep481 : walkShmemLines Padded481.lines 361628 beforeFfis481 beforeShmem481 = (362140, afterFfis481, afterShmem481) := by
  kernel_rfl
theorem shmemStep481 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded481 :: rest) 361628 beforeFfis481 beforeShmem481 = LabToTarget.getShmemInfo rest 362140 afterFfis481 afterShmem481 := by
  rw [getShmemInfo_section, walkStep481]
theorem symbolLength481 : LabToTarget.secLength Padded481.lines 0 = 512 := by
  kernel_rfl
#print axioms shmemStep481
#print axioms symbolLength481
end InitECandidate.Proofs.BackendStages.Metadata
