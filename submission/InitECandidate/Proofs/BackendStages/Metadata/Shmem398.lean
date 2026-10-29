import InitECandidate.Proofs.BackendStages.Metadata.Data398
import InitECandidate.Proofs.BackendStages.Padded398
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem walkStep398 : walkShmemLines Padded398.lines 302796 beforeFfis398 beforeShmem398 = (303220, afterFfis398, afterShmem398) := by
  kernel_rfl
theorem shmemStep398 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded398 :: rest) 302796 beforeFfis398 beforeShmem398 = LabToTarget.getShmemInfo rest 303220 afterFfis398 afterShmem398 := by
  rw [getShmemInfo_section, walkStep398]
theorem symbolLength398 : LabToTarget.secLength Padded398.lines 0 = 424 := by
  kernel_rfl
#print axioms shmemStep398
#print axioms symbolLength398
end InitECandidate.Proofs.BackendStages.Metadata
