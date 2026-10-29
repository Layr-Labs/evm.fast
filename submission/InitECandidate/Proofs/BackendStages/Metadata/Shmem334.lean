import InitECandidate.Proofs.BackendStages.Metadata.Data334
import InitECandidate.Proofs.BackendStages.Padded334
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem walkStep334 : walkShmemLines Padded334.lines 264484 beforeFfis334 beforeShmem334 = (265876, afterFfis334, afterShmem334) := by
  kernel_rfl
theorem shmemStep334 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded334 :: rest) 264484 beforeFfis334 beforeShmem334 = LabToTarget.getShmemInfo rest 265876 afterFfis334 afterShmem334 := by
  rw [getShmemInfo_section, walkStep334]
theorem symbolLength334 : LabToTarget.secLength Padded334.lines 0 = 1392 := by
  kernel_rfl
#print axioms shmemStep334
#print axioms symbolLength334
end InitECandidate.Proofs.BackendStages.Metadata
