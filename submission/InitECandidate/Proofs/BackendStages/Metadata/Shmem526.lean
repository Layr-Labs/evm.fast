import InitECandidate.Proofs.BackendStages.Metadata.Data526
import InitECandidate.Proofs.BackendStages.Padded526
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem walkStep526 : walkShmemLines Padded526.lines 390436 beforeFfis526 beforeShmem526 = (391360, afterFfis526, afterShmem526) := by
  kernel_rfl
theorem shmemStep526 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded526 :: rest) 390436 beforeFfis526 beforeShmem526 = LabToTarget.getShmemInfo rest 391360 afterFfis526 afterShmem526 := by
  rw [getShmemInfo_section, walkStep526]
theorem symbolLength526 : LabToTarget.secLength Padded526.lines 0 = 924 := by
  kernel_rfl
#print axioms shmemStep526
#print axioms symbolLength526
end InitECandidate.Proofs.BackendStages.Metadata
