import InitECandidate.Proofs.BackendStages.Metadata.Data658
import InitECandidate.Proofs.BackendStages.Padded658
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem walkStep658 : walkShmemLines Padded658.lines 583344 beforeFfis658 beforeShmem658 = (583864, afterFfis658, afterShmem658) := by
  kernel_rfl
theorem shmemStep658 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded658 :: rest) 583344 beforeFfis658 beforeShmem658 = LabToTarget.getShmemInfo rest 583864 afterFfis658 afterShmem658 := by
  rw [getShmemInfo_section, walkStep658]
theorem symbolLength658 : LabToTarget.secLength Padded658.lines 0 = 520 := by
  kernel_rfl
#print axioms shmemStep658
#print axioms symbolLength658
end InitECandidate.Proofs.BackendStages.Metadata
