import InitECandidate.Proofs.BackendStages.Metadata.Data864
import InitECandidate.Proofs.BackendStages.Padded864
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem walkStep864 : walkShmemLines Padded864.lines 963836 beforeFfis864 beforeShmem864 = (964000, afterFfis864, afterShmem864) := by
  kernel_rfl
theorem shmemStep864 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded864 :: rest) 963836 beforeFfis864 beforeShmem864 = LabToTarget.getShmemInfo rest 964000 afterFfis864 afterShmem864 := by
  rw [getShmemInfo_section, walkStep864]
theorem symbolLength864 : LabToTarget.secLength Padded864.lines 0 = 164 := by
  kernel_rfl
#print axioms shmemStep864
#print axioms symbolLength864
end InitECandidate.Proofs.BackendStages.Metadata
