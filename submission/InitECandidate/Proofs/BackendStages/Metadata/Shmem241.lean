import InitECandidate.Proofs.BackendStages.Metadata.Data241
import InitECandidate.Proofs.BackendStages.Padded241
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem walkStep241 : walkShmemLines Padded241.lines 176916 beforeFfis241 beforeShmem241 = (177376, afterFfis241, afterShmem241) := by
  kernel_rfl
theorem shmemStep241 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded241 :: rest) 176916 beforeFfis241 beforeShmem241 = LabToTarget.getShmemInfo rest 177376 afterFfis241 afterShmem241 := by
  rw [getShmemInfo_section, walkStep241]
theorem symbolLength241 : LabToTarget.secLength Padded241.lines 0 = 460 := by
  kernel_rfl
#print axioms shmemStep241
#print axioms symbolLength241
end InitECandidate.Proofs.BackendStages.Metadata
