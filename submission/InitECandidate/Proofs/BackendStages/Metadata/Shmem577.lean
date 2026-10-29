import InitECandidate.Proofs.BackendStages.Metadata.Data577
import InitECandidate.Proofs.BackendStages.Padded577
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem walkStep577 : walkShmemLines Padded577.lines 432476 beforeFfis577 beforeShmem577 = (433040, afterFfis577, afterShmem577) := by
  kernel_rfl
theorem shmemStep577 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded577 :: rest) 432476 beforeFfis577 beforeShmem577 = LabToTarget.getShmemInfo rest 433040 afterFfis577 afterShmem577 := by
  rw [getShmemInfo_section, walkStep577]
theorem symbolLength577 : LabToTarget.secLength Padded577.lines 0 = 564 := by
  kernel_rfl
#print axioms shmemStep577
#print axioms symbolLength577
end InitECandidate.Proofs.BackendStages.Metadata
