import InitECandidate.Proofs.BackendStages.Metadata.Data393
import InitECandidate.Proofs.BackendStages.Padded393
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem walkStep393 : walkShmemLines Padded393.lines 301208 beforeFfis393 beforeShmem393 = (301488, afterFfis393, afterShmem393) := by
  kernel_rfl
theorem shmemStep393 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded393 :: rest) 301208 beforeFfis393 beforeShmem393 = LabToTarget.getShmemInfo rest 301488 afterFfis393 afterShmem393 := by
  rw [getShmemInfo_section, walkStep393]
theorem symbolLength393 : LabToTarget.secLength Padded393.lines 0 = 280 := by
  kernel_rfl
#print axioms shmemStep393
#print axioms symbolLength393
end InitECandidate.Proofs.BackendStages.Metadata
