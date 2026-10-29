import InitECandidate.Proofs.BackendStages.Metadata.Data633
import InitECandidate.Proofs.BackendStages.Padded633
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem walkStep633 : walkShmemLines Padded633.lines 529140 beforeFfis633 beforeShmem633 = (529316, afterFfis633, afterShmem633) := by
  kernel_rfl
theorem shmemStep633 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded633 :: rest) 529140 beforeFfis633 beforeShmem633 = LabToTarget.getShmemInfo rest 529316 afterFfis633 afterShmem633 := by
  rw [getShmemInfo_section, walkStep633]
theorem symbolLength633 : LabToTarget.secLength Padded633.lines 0 = 176 := by
  kernel_rfl
#print axioms shmemStep633
#print axioms symbolLength633
end InitECandidate.Proofs.BackendStages.Metadata
