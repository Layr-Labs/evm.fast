import InitECandidate.Proofs.BackendStages.Metadata.Data400
import InitECandidate.Proofs.BackendStages.Padded400
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem walkStep400 : walkShmemLines Padded400.lines 303396 beforeFfis400 beforeShmem400 = (303880, afterFfis400, afterShmem400) := by
  kernel_rfl
theorem shmemStep400 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded400 :: rest) 303396 beforeFfis400 beforeShmem400 = LabToTarget.getShmemInfo rest 303880 afterFfis400 afterShmem400 := by
  rw [getShmemInfo_section, walkStep400]
theorem symbolLength400 : LabToTarget.secLength Padded400.lines 0 = 484 := by
  kernel_rfl
#print axioms shmemStep400
#print axioms symbolLength400
end InitECandidate.Proofs.BackendStages.Metadata
