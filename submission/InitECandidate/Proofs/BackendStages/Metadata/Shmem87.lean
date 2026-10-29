import InitECandidate.Proofs.BackendStages.Metadata.Data87
import InitECandidate.Proofs.BackendStages.Padded87
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem walkStep87 : walkShmemLines Padded87.lines 8608 beforeFfis87 beforeShmem87 = (8880, afterFfis87, afterShmem87) := by
  kernel_rfl
theorem shmemStep87 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded87 :: rest) 8608 beforeFfis87 beforeShmem87 = LabToTarget.getShmemInfo rest 8880 afterFfis87 afterShmem87 := by
  rw [getShmemInfo_section, walkStep87]
theorem symbolLength87 : LabToTarget.secLength Padded87.lines 0 = 272 := by
  kernel_rfl
#print axioms shmemStep87
#print axioms symbolLength87
end InitECandidate.Proofs.BackendStages.Metadata
