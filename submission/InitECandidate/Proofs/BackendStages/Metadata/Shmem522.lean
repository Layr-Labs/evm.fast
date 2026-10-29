import InitECandidate.Proofs.BackendStages.Metadata.Data522
import InitECandidate.Proofs.BackendStages.Padded522
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem walkStep522 : walkShmemLines Padded522.lines 387052 beforeFfis522 beforeShmem522 = (387668, afterFfis522, afterShmem522) := by
  kernel_rfl
theorem shmemStep522 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded522 :: rest) 387052 beforeFfis522 beforeShmem522 = LabToTarget.getShmemInfo rest 387668 afterFfis522 afterShmem522 := by
  rw [getShmemInfo_section, walkStep522]
theorem symbolLength522 : LabToTarget.secLength Padded522.lines 0 = 616 := by
  kernel_rfl
#print axioms shmemStep522
#print axioms symbolLength522
end InitECandidate.Proofs.BackendStages.Metadata
