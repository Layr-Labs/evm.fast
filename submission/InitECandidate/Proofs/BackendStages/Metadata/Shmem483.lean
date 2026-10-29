import InitECandidate.Proofs.BackendStages.Metadata.Data483
import InitECandidate.Proofs.BackendStages.Padded483
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem walkStep483 : walkShmemLines Padded483.lines 362808 beforeFfis483 beforeShmem483 = (363328, afterFfis483, afterShmem483) := by
  kernel_rfl
theorem shmemStep483 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded483 :: rest) 362808 beforeFfis483 beforeShmem483 = LabToTarget.getShmemInfo rest 363328 afterFfis483 afterShmem483 := by
  rw [getShmemInfo_section, walkStep483]
theorem symbolLength483 : LabToTarget.secLength Padded483.lines 0 = 520 := by
  kernel_rfl
#print axioms shmemStep483
#print axioms symbolLength483
end InitECandidate.Proofs.BackendStages.Metadata
