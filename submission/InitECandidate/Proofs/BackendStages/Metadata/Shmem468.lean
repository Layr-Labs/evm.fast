import InitECandidate.Proofs.BackendStages.Metadata.Data468
import InitECandidate.Proofs.BackendStages.Padded468
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem walkStep468 : walkShmemLines Padded468.lines 357836 beforeFfis468 beforeShmem468 = (357968, afterFfis468, afterShmem468) := by
  kernel_rfl
theorem shmemStep468 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded468 :: rest) 357836 beforeFfis468 beforeShmem468 = LabToTarget.getShmemInfo rest 357968 afterFfis468 afterShmem468 := by
  rw [getShmemInfo_section, walkStep468]
theorem symbolLength468 : LabToTarget.secLength Padded468.lines 0 = 132 := by
  kernel_rfl
#print axioms shmemStep468
#print axioms symbolLength468
end InitECandidate.Proofs.BackendStages.Metadata
