import InitECandidate.Proofs.BackendStages.Metadata.Data719
import InitECandidate.Proofs.BackendStages.Padded719
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem walkStep719 : walkShmemLines Padded719.lines 722996 beforeFfis719 beforeShmem719 = (723376, afterFfis719, afterShmem719) := by
  kernel_rfl
theorem shmemStep719 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded719 :: rest) 722996 beforeFfis719 beforeShmem719 = LabToTarget.getShmemInfo rest 723376 afterFfis719 afterShmem719 := by
  rw [getShmemInfo_section, walkStep719]
theorem symbolLength719 : LabToTarget.secLength Padded719.lines 0 = 380 := by
  kernel_rfl
#print axioms shmemStep719
#print axioms symbolLength719
end InitECandidate.Proofs.BackendStages.Metadata
