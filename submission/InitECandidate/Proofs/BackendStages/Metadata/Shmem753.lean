import InitECandidate.Proofs.BackendStages.Metadata.Data753
import InitECandidate.Proofs.BackendStages.Padded753
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem walkStep753 : walkShmemLines Padded753.lines 750844 beforeFfis753 beforeShmem753 = (751780, afterFfis753, afterShmem753) := by
  kernel_rfl
theorem shmemStep753 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded753 :: rest) 750844 beforeFfis753 beforeShmem753 = LabToTarget.getShmemInfo rest 751780 afterFfis753 afterShmem753 := by
  rw [getShmemInfo_section, walkStep753]
theorem symbolLength753 : LabToTarget.secLength Padded753.lines 0 = 936 := by
  kernel_rfl
#print axioms shmemStep753
#print axioms symbolLength753
end InitECandidate.Proofs.BackendStages.Metadata
