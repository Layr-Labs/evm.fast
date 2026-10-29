import InitECandidate.Proofs.BackendStages.Metadata.Data138
import InitECandidate.Proofs.BackendStages.Padded138
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem walkStep138 : walkShmemLines Padded138.lines 26468 beforeFfis138 beforeShmem138 = (26928, afterFfis138, afterShmem138) := by
  kernel_rfl
theorem shmemStep138 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded138 :: rest) 26468 beforeFfis138 beforeShmem138 = LabToTarget.getShmemInfo rest 26928 afterFfis138 afterShmem138 := by
  rw [getShmemInfo_section, walkStep138]
theorem symbolLength138 : LabToTarget.secLength Padded138.lines 0 = 460 := by
  kernel_rfl
#print axioms shmemStep138
#print axioms symbolLength138
end InitECandidate.Proofs.BackendStages.Metadata
