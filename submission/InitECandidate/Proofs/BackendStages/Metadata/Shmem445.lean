import InitECandidate.Proofs.BackendStages.Metadata.Data445
import InitECandidate.Proofs.BackendStages.Padded445
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem walkStep445 : walkShmemLines Padded445.lines 327976 beforeFfis445 beforeShmem445 = (328300, afterFfis445, afterShmem445) := by
  kernel_rfl
theorem shmemStep445 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded445 :: rest) 327976 beforeFfis445 beforeShmem445 = LabToTarget.getShmemInfo rest 328300 afterFfis445 afterShmem445 := by
  rw [getShmemInfo_section, walkStep445]
theorem symbolLength445 : LabToTarget.secLength Padded445.lines 0 = 324 := by
  kernel_rfl
#print axioms shmemStep445
#print axioms symbolLength445
end InitECandidate.Proofs.BackendStages.Metadata
