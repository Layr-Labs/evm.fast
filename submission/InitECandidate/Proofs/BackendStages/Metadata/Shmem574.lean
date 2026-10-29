import InitECandidate.Proofs.BackendStages.Metadata.Data574
import InitECandidate.Proofs.BackendStages.Padded574
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem walkStep574 : walkShmemLines Padded574.lines 429624 beforeFfis574 beforeShmem574 = (430532, afterFfis574, afterShmem574) := by
  kernel_rfl
theorem shmemStep574 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded574 :: rest) 429624 beforeFfis574 beforeShmem574 = LabToTarget.getShmemInfo rest 430532 afterFfis574 afterShmem574 := by
  rw [getShmemInfo_section, walkStep574]
theorem symbolLength574 : LabToTarget.secLength Padded574.lines 0 = 908 := by
  kernel_rfl
#print axioms shmemStep574
#print axioms symbolLength574
end InitECandidate.Proofs.BackendStages.Metadata
