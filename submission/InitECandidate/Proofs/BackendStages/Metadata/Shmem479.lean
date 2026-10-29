import InitECandidate.Proofs.BackendStages.Metadata.Data479
import InitECandidate.Proofs.BackendStages.Padded479
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem walkStep479 : walkShmemLines Padded479.lines 359912 beforeFfis479 beforeShmem479 = (360332, afterFfis479, afterShmem479) := by
  kernel_rfl
theorem shmemStep479 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded479 :: rest) 359912 beforeFfis479 beforeShmem479 = LabToTarget.getShmemInfo rest 360332 afterFfis479 afterShmem479 := by
  rw [getShmemInfo_section, walkStep479]
theorem symbolLength479 : LabToTarget.secLength Padded479.lines 0 = 420 := by
  kernel_rfl
#print axioms shmemStep479
#print axioms symbolLength479
end InitECandidate.Proofs.BackendStages.Metadata
