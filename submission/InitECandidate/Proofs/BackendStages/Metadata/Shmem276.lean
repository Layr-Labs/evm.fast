import InitECandidate.Proofs.BackendStages.Metadata.Data276
import InitECandidate.Proofs.BackendStages.Padded276
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem walkStep276 : walkShmemLines Padded276.lines 214332 beforeFfis276 beforeShmem276 = (218012, afterFfis276, afterShmem276) := by
  kernel_rfl
theorem shmemStep276 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded276 :: rest) 214332 beforeFfis276 beforeShmem276 = LabToTarget.getShmemInfo rest 218012 afterFfis276 afterShmem276 := by
  rw [getShmemInfo_section, walkStep276]
theorem symbolLength276 : LabToTarget.secLength Padded276.lines 0 = 3680 := by
  kernel_rfl
#print axioms shmemStep276
#print axioms symbolLength276
end InitECandidate.Proofs.BackendStages.Metadata
