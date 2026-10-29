import InitECandidate.Proofs.BackendStages.Metadata.Data466
import InitECandidate.Proofs.BackendStages.Padded466
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem walkStep466 : walkShmemLines Padded466.lines 357236 beforeFfis466 beforeShmem466 = (357688, afterFfis466, afterShmem466) := by
  kernel_rfl
theorem shmemStep466 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded466 :: rest) 357236 beforeFfis466 beforeShmem466 = LabToTarget.getShmemInfo rest 357688 afterFfis466 afterShmem466 := by
  rw [getShmemInfo_section, walkStep466]
theorem symbolLength466 : LabToTarget.secLength Padded466.lines 0 = 452 := by
  kernel_rfl
#print axioms shmemStep466
#print axioms symbolLength466
end InitECandidate.Proofs.BackendStages.Metadata
