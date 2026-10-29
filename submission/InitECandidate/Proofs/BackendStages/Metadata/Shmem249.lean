import InitECandidate.Proofs.BackendStages.Metadata.Data249
import InitECandidate.Proofs.BackendStages.Padded249
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem walkStep249 : walkShmemLines Padded249.lines 182412 beforeFfis249 beforeShmem249 = (182668, afterFfis249, afterShmem249) := by
  kernel_rfl
theorem shmemStep249 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded249 :: rest) 182412 beforeFfis249 beforeShmem249 = LabToTarget.getShmemInfo rest 182668 afterFfis249 afterShmem249 := by
  rw [getShmemInfo_section, walkStep249]
theorem symbolLength249 : LabToTarget.secLength Padded249.lines 0 = 256 := by
  kernel_rfl
#print axioms shmemStep249
#print axioms symbolLength249
end InitECandidate.Proofs.BackendStages.Metadata
