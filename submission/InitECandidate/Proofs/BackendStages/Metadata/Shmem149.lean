import InitECandidate.Proofs.BackendStages.Metadata.Data149
import InitECandidate.Proofs.BackendStages.Padded149
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem walkStep149 : walkShmemLines Padded149.lines 32796 beforeFfis149 beforeShmem149 = (33092, afterFfis149, afterShmem149) := by
  kernel_rfl
theorem shmemStep149 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded149 :: rest) 32796 beforeFfis149 beforeShmem149 = LabToTarget.getShmemInfo rest 33092 afterFfis149 afterShmem149 := by
  rw [getShmemInfo_section, walkStep149]
theorem symbolLength149 : LabToTarget.secLength Padded149.lines 0 = 296 := by
  kernel_rfl
#print axioms shmemStep149
#print axioms symbolLength149
end InitECandidate.Proofs.BackendStages.Metadata
