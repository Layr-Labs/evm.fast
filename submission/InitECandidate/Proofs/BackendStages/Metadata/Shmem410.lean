import InitECandidate.Proofs.BackendStages.Metadata.Data410
import InitECandidate.Proofs.BackendStages.Padded410
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem walkStep410 : walkShmemLines Padded410.lines 308752 beforeFfis410 beforeShmem410 = (309668, afterFfis410, afterShmem410) := by
  kernel_rfl
theorem shmemStep410 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded410 :: rest) 308752 beforeFfis410 beforeShmem410 = LabToTarget.getShmemInfo rest 309668 afterFfis410 afterShmem410 := by
  rw [getShmemInfo_section, walkStep410]
theorem symbolLength410 : LabToTarget.secLength Padded410.lines 0 = 916 := by
  kernel_rfl
#print axioms shmemStep410
#print axioms symbolLength410
end InitECandidate.Proofs.BackendStages.Metadata
