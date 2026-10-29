import InitECandidate.Proofs.BackendStages.Metadata.Data77
import InitECandidate.Proofs.BackendStages.Padded77
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem walkStep77 : walkShmemLines Padded77.lines 6312 beforeFfis77 beforeShmem77 = (6648, afterFfis77, afterShmem77) := by
  kernel_rfl
theorem shmemStep77 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded77 :: rest) 6312 beforeFfis77 beforeShmem77 = LabToTarget.getShmemInfo rest 6648 afterFfis77 afterShmem77 := by
  rw [getShmemInfo_section, walkStep77]
theorem symbolLength77 : LabToTarget.secLength Padded77.lines 0 = 336 := by
  kernel_rfl
#print axioms shmemStep77
#print axioms symbolLength77
end InitECandidate.Proofs.BackendStages.Metadata
