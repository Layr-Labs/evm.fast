import InitECandidate.Proofs.BackendStages.Metadata.Data662
import InitECandidate.Proofs.BackendStages.Padded662
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem walkStep662 : walkShmemLines Padded662.lines 594860 beforeFfis662 beforeShmem662 = (594960, afterFfis662, afterShmem662) := by
  kernel_rfl
theorem shmemStep662 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded662 :: rest) 594860 beforeFfis662 beforeShmem662 = LabToTarget.getShmemInfo rest 594960 afterFfis662 afterShmem662 := by
  rw [getShmemInfo_section, walkStep662]
theorem symbolLength662 : LabToTarget.secLength Padded662.lines 0 = 100 := by
  kernel_rfl
#print axioms shmemStep662
#print axioms symbolLength662
end InitECandidate.Proofs.BackendStages.Metadata
