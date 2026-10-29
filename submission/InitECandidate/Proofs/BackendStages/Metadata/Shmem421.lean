import InitECandidate.Proofs.BackendStages.Metadata.Data421
import InitECandidate.Proofs.BackendStages.Padded421
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem walkStep421 : walkShmemLines Padded421.lines 313960 beforeFfis421 beforeShmem421 = (314864, afterFfis421, afterShmem421) := by
  kernel_rfl
theorem shmemStep421 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded421 :: rest) 313960 beforeFfis421 beforeShmem421 = LabToTarget.getShmemInfo rest 314864 afterFfis421 afterShmem421 := by
  rw [getShmemInfo_section, walkStep421]
theorem symbolLength421 : LabToTarget.secLength Padded421.lines 0 = 904 := by
  kernel_rfl
#print axioms shmemStep421
#print axioms symbolLength421
end InitECandidate.Proofs.BackendStages.Metadata
