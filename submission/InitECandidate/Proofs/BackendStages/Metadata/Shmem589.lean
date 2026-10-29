import InitECandidate.Proofs.BackendStages.Metadata.Data589
import InitECandidate.Proofs.BackendStages.Padded589
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem walkStep589 : walkShmemLines Padded589.lines 444496 beforeFfis589 beforeShmem589 = (444676, afterFfis589, afterShmem589) := by
  kernel_rfl
theorem shmemStep589 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded589 :: rest) 444496 beforeFfis589 beforeShmem589 = LabToTarget.getShmemInfo rest 444676 afterFfis589 afterShmem589 := by
  rw [getShmemInfo_section, walkStep589]
theorem symbolLength589 : LabToTarget.secLength Padded589.lines 0 = 180 := by
  kernel_rfl
#print axioms shmemStep589
#print axioms symbolLength589
end InitECandidate.Proofs.BackendStages.Metadata
