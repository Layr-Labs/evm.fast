import InitECandidate.Proofs.BackendStages.Metadata.Data150
import InitECandidate.Proofs.BackendStages.Padded150
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem walkStep150 : walkShmemLines Padded150.lines 33092 beforeFfis150 beforeShmem150 = (33272, afterFfis150, afterShmem150) := by
  kernel_rfl
theorem shmemStep150 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded150 :: rest) 33092 beforeFfis150 beforeShmem150 = LabToTarget.getShmemInfo rest 33272 afterFfis150 afterShmem150 := by
  rw [getShmemInfo_section, walkStep150]
theorem symbolLength150 : LabToTarget.secLength Padded150.lines 0 = 180 := by
  kernel_rfl
#print axioms shmemStep150
#print axioms symbolLength150
end InitECandidate.Proofs.BackendStages.Metadata
