import InitECandidate.Proofs.BackendStages.Metadata.Data240
import InitECandidate.Proofs.BackendStages.Padded240
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem walkStep240 : walkShmemLines Padded240.lines 176064 beforeFfis240 beforeShmem240 = (176916, afterFfis240, afterShmem240) := by
  kernel_rfl
theorem shmemStep240 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded240 :: rest) 176064 beforeFfis240 beforeShmem240 = LabToTarget.getShmemInfo rest 176916 afterFfis240 afterShmem240 := by
  rw [getShmemInfo_section, walkStep240]
theorem symbolLength240 : LabToTarget.secLength Padded240.lines 0 = 852 := by
  kernel_rfl
#print axioms shmemStep240
#print axioms symbolLength240
end InitECandidate.Proofs.BackendStages.Metadata
