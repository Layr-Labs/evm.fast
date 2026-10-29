import InitECandidate.Proofs.BackendStages.Metadata.Data672
import InitECandidate.Proofs.BackendStages.Padded672
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem walkStep672 : walkShmemLines Padded672.lines 602848 beforeFfis672 beforeShmem672 = (603204, afterFfis672, afterShmem672) := by
  kernel_rfl
theorem shmemStep672 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded672 :: rest) 602848 beforeFfis672 beforeShmem672 = LabToTarget.getShmemInfo rest 603204 afterFfis672 afterShmem672 := by
  rw [getShmemInfo_section, walkStep672]
theorem symbolLength672 : LabToTarget.secLength Padded672.lines 0 = 356 := by
  kernel_rfl
#print axioms shmemStep672
#print axioms symbolLength672
end InitECandidate.Proofs.BackendStages.Metadata
