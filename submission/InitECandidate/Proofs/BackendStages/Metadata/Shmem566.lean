import InitECandidate.Proofs.BackendStages.Metadata.Data566
import InitECandidate.Proofs.BackendStages.Padded566
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem walkStep566 : walkShmemLines Padded566.lines 421280 beforeFfis566 beforeShmem566 = (422196, afterFfis566, afterShmem566) := by
  kernel_rfl
theorem shmemStep566 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded566 :: rest) 421280 beforeFfis566 beforeShmem566 = LabToTarget.getShmemInfo rest 422196 afterFfis566 afterShmem566 := by
  rw [getShmemInfo_section, walkStep566]
theorem symbolLength566 : LabToTarget.secLength Padded566.lines 0 = 916 := by
  kernel_rfl
#print axioms shmemStep566
#print axioms symbolLength566
end InitECandidate.Proofs.BackendStages.Metadata
