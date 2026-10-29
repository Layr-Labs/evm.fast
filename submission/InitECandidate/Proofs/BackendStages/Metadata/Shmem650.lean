import InitECandidate.Proofs.BackendStages.Metadata.Data650
import InitECandidate.Proofs.BackendStages.Padded650
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem walkStep650 : walkShmemLines Padded650.lines 554584 beforeFfis650 beforeShmem650 = (560384, afterFfis650, afterShmem650) := by
  kernel_rfl
theorem shmemStep650 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded650 :: rest) 554584 beforeFfis650 beforeShmem650 = LabToTarget.getShmemInfo rest 560384 afterFfis650 afterShmem650 := by
  rw [getShmemInfo_section, walkStep650]
theorem symbolLength650 : LabToTarget.secLength Padded650.lines 0 = 5800 := by
  kernel_rfl
#print axioms shmemStep650
#print axioms symbolLength650
end InitECandidate.Proofs.BackendStages.Metadata
