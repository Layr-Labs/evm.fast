import InitECandidate.Proofs.BackendStages.Metadata.Data66
import InitECandidate.Proofs.BackendStages.Padded66
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem walkStep66 : walkShmemLines Padded66.lines 4700 beforeFfis66 beforeShmem66 = (4872, afterFfis66, afterShmem66) := by
  kernel_rfl
theorem shmemStep66 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded66 :: rest) 4700 beforeFfis66 beforeShmem66 = LabToTarget.getShmemInfo rest 4872 afterFfis66 afterShmem66 := by
  rw [getShmemInfo_section, walkStep66]
theorem symbolLength66 : LabToTarget.secLength Padded66.lines 0 = 172 := by
  kernel_rfl
#print axioms shmemStep66
#print axioms symbolLength66
end InitECandidate.Proofs.BackendStages.Metadata
