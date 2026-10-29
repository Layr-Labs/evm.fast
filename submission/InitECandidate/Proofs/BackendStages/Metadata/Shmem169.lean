import InitECandidate.Proofs.BackendStages.Metadata.Data169
import InitECandidate.Proofs.BackendStages.Padded169
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem walkStep169 : walkShmemLines Padded169.lines 94652 beforeFfis169 beforeShmem169 = (95208, afterFfis169, afterShmem169) := by
  kernel_rfl
theorem shmemStep169 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded169 :: rest) 94652 beforeFfis169 beforeShmem169 = LabToTarget.getShmemInfo rest 95208 afterFfis169 afterShmem169 := by
  rw [getShmemInfo_section, walkStep169]
theorem symbolLength169 : LabToTarget.secLength Padded169.lines 0 = 556 := by
  kernel_rfl
#print axioms shmemStep169
#print axioms symbolLength169
end InitECandidate.Proofs.BackendStages.Metadata
