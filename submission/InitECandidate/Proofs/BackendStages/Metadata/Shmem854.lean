import InitECandidate.Proofs.BackendStages.Metadata.Data854
import InitECandidate.Proofs.BackendStages.Padded854
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem walkStep854 : walkShmemLines Padded854.lines 935620 beforeFfis854 beforeShmem854 = (939580, afterFfis854, afterShmem854) := by
  kernel_rfl
theorem shmemStep854 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded854 :: rest) 935620 beforeFfis854 beforeShmem854 = LabToTarget.getShmemInfo rest 939580 afterFfis854 afterShmem854 := by
  rw [getShmemInfo_section, walkStep854]
theorem symbolLength854 : LabToTarget.secLength Padded854.lines 0 = 3960 := by
  kernel_rfl
#print axioms shmemStep854
#print axioms symbolLength854
end InitECandidate.Proofs.BackendStages.Metadata
