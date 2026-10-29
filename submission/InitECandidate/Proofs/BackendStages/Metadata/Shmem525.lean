import InitECandidate.Proofs.BackendStages.Metadata.Data525
import InitECandidate.Proofs.BackendStages.Padded525
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem walkStep525 : walkShmemLines Padded525.lines 389976 beforeFfis525 beforeShmem525 = (390436, afterFfis525, afterShmem525) := by
  kernel_rfl
theorem shmemStep525 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded525 :: rest) 389976 beforeFfis525 beforeShmem525 = LabToTarget.getShmemInfo rest 390436 afterFfis525 afterShmem525 := by
  rw [getShmemInfo_section, walkStep525]
theorem symbolLength525 : LabToTarget.secLength Padded525.lines 0 = 460 := by
  kernel_rfl
#print axioms shmemStep525
#print axioms symbolLength525
end InitECandidate.Proofs.BackendStages.Metadata
