import InitECandidate.Proofs.BackendStages.Metadata.Data343
import InitECandidate.Proofs.BackendStages.Padded343
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem walkStep343 : walkShmemLines Padded343.lines 269352 beforeFfis343 beforeShmem343 = (270020, afterFfis343, afterShmem343) := by
  kernel_rfl
theorem shmemStep343 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded343 :: rest) 269352 beforeFfis343 beforeShmem343 = LabToTarget.getShmemInfo rest 270020 afterFfis343 afterShmem343 := by
  rw [getShmemInfo_section, walkStep343]
theorem symbolLength343 : LabToTarget.secLength Padded343.lines 0 = 668 := by
  kernel_rfl
#print axioms shmemStep343
#print axioms symbolLength343
end InitECandidate.Proofs.BackendStages.Metadata
