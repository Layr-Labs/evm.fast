import InitECandidate.Proofs.BackendStages.Metadata.Data447
import InitECandidate.Proofs.BackendStages.Padded447
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem walkStep447 : walkShmemLines Padded447.lines 328440 beforeFfis447 beforeShmem447 = (328876, afterFfis447, afterShmem447) := by
  kernel_rfl
theorem shmemStep447 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded447 :: rest) 328440 beforeFfis447 beforeShmem447 = LabToTarget.getShmemInfo rest 328876 afterFfis447 afterShmem447 := by
  rw [getShmemInfo_section, walkStep447]
theorem symbolLength447 : LabToTarget.secLength Padded447.lines 0 = 436 := by
  kernel_rfl
#print axioms shmemStep447
#print axioms symbolLength447
end InitECandidate.Proofs.BackendStages.Metadata
