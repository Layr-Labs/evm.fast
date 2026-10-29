import InitECandidate.Proofs.BackendStages.Metadata.Data88
import InitECandidate.Proofs.BackendStages.Padded88
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem walkStep88 : walkShmemLines Padded88.lines 8880 beforeFfis88 beforeShmem88 = (8928, afterFfis88, afterShmem88) := by
  kernel_rfl
theorem shmemStep88 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded88 :: rest) 8880 beforeFfis88 beforeShmem88 = LabToTarget.getShmemInfo rest 8928 afterFfis88 afterShmem88 := by
  rw [getShmemInfo_section, walkStep88]
theorem symbolLength88 : LabToTarget.secLength Padded88.lines 0 = 48 := by
  kernel_rfl
#print axioms shmemStep88
#print axioms symbolLength88
end InitECandidate.Proofs.BackendStages.Metadata
