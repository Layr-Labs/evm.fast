import InitECandidate.Proofs.BackendStages.Metadata.Data498
import InitECandidate.Proofs.BackendStages.Padded498
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem walkStep498 : walkShmemLines Padded498.lines 368184 beforeFfis498 beforeShmem498 = (368948, afterFfis498, afterShmem498) := by
  kernel_rfl
theorem shmemStep498 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded498 :: rest) 368184 beforeFfis498 beforeShmem498 = LabToTarget.getShmemInfo rest 368948 afterFfis498 afterShmem498 := by
  rw [getShmemInfo_section, walkStep498]
theorem symbolLength498 : LabToTarget.secLength Padded498.lines 0 = 764 := by
  kernel_rfl
#print axioms shmemStep498
#print axioms symbolLength498
end InitECandidate.Proofs.BackendStages.Metadata
