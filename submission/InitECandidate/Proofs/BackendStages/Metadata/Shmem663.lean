import InitECandidate.Proofs.BackendStages.Metadata.Data663
import InitECandidate.Proofs.BackendStages.Padded663
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem walkStep663 : walkShmemLines Padded663.lines 594960 beforeFfis663 beforeShmem663 = (594980, afterFfis663, afterShmem663) := by
  kernel_rfl
theorem shmemStep663 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded663 :: rest) 594960 beforeFfis663 beforeShmem663 = LabToTarget.getShmemInfo rest 594980 afterFfis663 afterShmem663 := by
  rw [getShmemInfo_section, walkStep663]
theorem symbolLength663 : LabToTarget.secLength Padded663.lines 0 = 20 := by
  kernel_rfl
#print axioms shmemStep663
#print axioms symbolLength663
end InitECandidate.Proofs.BackendStages.Metadata
