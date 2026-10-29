import InitECandidate.Proofs.BackendStages.Metadata.Data666
import InitECandidate.Proofs.BackendStages.Padded666
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem walkStep666 : walkShmemLines Padded666.lines 596092 beforeFfis666 beforeShmem666 = (597784, afterFfis666, afterShmem666) := by
  kernel_rfl
theorem shmemStep666 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded666 :: rest) 596092 beforeFfis666 beforeShmem666 = LabToTarget.getShmemInfo rest 597784 afterFfis666 afterShmem666 := by
  rw [getShmemInfo_section, walkStep666]
theorem symbolLength666 : LabToTarget.secLength Padded666.lines 0 = 1692 := by
  kernel_rfl
#print axioms shmemStep666
#print axioms symbolLength666
end InitECandidate.Proofs.BackendStages.Metadata
