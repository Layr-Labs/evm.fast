import InitECandidate.Proofs.BackendStages.Metadata.Data436
import InitECandidate.Proofs.BackendStages.Padded436
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem walkStep436 : walkShmemLines Padded436.lines 323300 beforeFfis436 beforeShmem436 = (323640, afterFfis436, afterShmem436) := by
  kernel_rfl
theorem shmemStep436 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded436 :: rest) 323300 beforeFfis436 beforeShmem436 = LabToTarget.getShmemInfo rest 323640 afterFfis436 afterShmem436 := by
  rw [getShmemInfo_section, walkStep436]
theorem symbolLength436 : LabToTarget.secLength Padded436.lines 0 = 340 := by
  kernel_rfl
#print axioms shmemStep436
#print axioms symbolLength436
end InitECandidate.Proofs.BackendStages.Metadata
