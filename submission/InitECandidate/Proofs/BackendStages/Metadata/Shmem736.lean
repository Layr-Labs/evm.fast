import InitECandidate.Proofs.BackendStages.Metadata.Data736
import InitECandidate.Proofs.BackendStages.Padded736
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem walkStep736 : walkShmemLines Padded736.lines 735484 beforeFfis736 beforeShmem736 = (736028, afterFfis736, afterShmem736) := by
  kernel_rfl
theorem shmemStep736 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded736 :: rest) 735484 beforeFfis736 beforeShmem736 = LabToTarget.getShmemInfo rest 736028 afterFfis736 afterShmem736 := by
  rw [getShmemInfo_section, walkStep736]
theorem symbolLength736 : LabToTarget.secLength Padded736.lines 0 = 544 := by
  kernel_rfl
#print axioms shmemStep736
#print axioms symbolLength736
end InitECandidate.Proofs.BackendStages.Metadata
