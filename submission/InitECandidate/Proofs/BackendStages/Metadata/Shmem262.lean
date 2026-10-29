import InitECandidate.Proofs.BackendStages.Metadata.Data262
import InitECandidate.Proofs.BackendStages.Padded262
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem walkStep262 : walkShmemLines Padded262.lines 200896 beforeFfis262 beforeShmem262 = (201792, afterFfis262, afterShmem262) := by
  kernel_rfl
theorem shmemStep262 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded262 :: rest) 200896 beforeFfis262 beforeShmem262 = LabToTarget.getShmemInfo rest 201792 afterFfis262 afterShmem262 := by
  rw [getShmemInfo_section, walkStep262]
theorem symbolLength262 : LabToTarget.secLength Padded262.lines 0 = 896 := by
  kernel_rfl
#print axioms shmemStep262
#print axioms symbolLength262
end InitECandidate.Proofs.BackendStages.Metadata
