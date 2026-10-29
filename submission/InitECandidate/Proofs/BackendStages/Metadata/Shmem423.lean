import InitECandidate.Proofs.BackendStages.Metadata.Data423
import InitECandidate.Proofs.BackendStages.Padded423
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem walkStep423 : walkShmemLines Padded423.lines 315124 beforeFfis423 beforeShmem423 = (315532, afterFfis423, afterShmem423) := by
  kernel_rfl
theorem shmemStep423 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded423 :: rest) 315124 beforeFfis423 beforeShmem423 = LabToTarget.getShmemInfo rest 315532 afterFfis423 afterShmem423 := by
  rw [getShmemInfo_section, walkStep423]
theorem symbolLength423 : LabToTarget.secLength Padded423.lines 0 = 408 := by
  kernel_rfl
#print axioms shmemStep423
#print axioms symbolLength423
end InitECandidate.Proofs.BackendStages.Metadata
