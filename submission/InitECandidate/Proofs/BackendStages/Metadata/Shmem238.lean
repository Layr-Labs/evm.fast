import InitECandidate.Proofs.BackendStages.Metadata.Data238
import InitECandidate.Proofs.BackendStages.Padded238
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem walkStep238 : walkShmemLines Padded238.lines 175256 beforeFfis238 beforeShmem238 = (175528, afterFfis238, afterShmem238) := by
  kernel_rfl
theorem shmemStep238 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded238 :: rest) 175256 beforeFfis238 beforeShmem238 = LabToTarget.getShmemInfo rest 175528 afterFfis238 afterShmem238 := by
  rw [getShmemInfo_section, walkStep238]
theorem symbolLength238 : LabToTarget.secLength Padded238.lines 0 = 272 := by
  kernel_rfl
#print axioms shmemStep238
#print axioms symbolLength238
end InitECandidate.Proofs.BackendStages.Metadata
