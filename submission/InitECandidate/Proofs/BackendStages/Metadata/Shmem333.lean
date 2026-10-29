import InitECandidate.Proofs.BackendStages.Metadata.Data333
import InitECandidate.Proofs.BackendStages.Padded333
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem walkStep333 : walkShmemLines Padded333.lines 261456 beforeFfis333 beforeShmem333 = (264484, afterFfis333, afterShmem333) := by
  kernel_rfl
theorem shmemStep333 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded333 :: rest) 261456 beforeFfis333 beforeShmem333 = LabToTarget.getShmemInfo rest 264484 afterFfis333 afterShmem333 := by
  rw [getShmemInfo_section, walkStep333]
theorem symbolLength333 : LabToTarget.secLength Padded333.lines 0 = 3028 := by
  kernel_rfl
#print axioms shmemStep333
#print axioms symbolLength333
end InitECandidate.Proofs.BackendStages.Metadata
