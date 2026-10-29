import InitECandidate.Proofs.BackendStages.Metadata.Data266
import InitECandidate.Proofs.BackendStages.Padded266
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem walkStep266 : walkShmemLines Padded266.lines 205376 beforeFfis266 beforeShmem266 = (206612, afterFfis266, afterShmem266) := by
  kernel_rfl
theorem shmemStep266 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded266 :: rest) 205376 beforeFfis266 beforeShmem266 = LabToTarget.getShmemInfo rest 206612 afterFfis266 afterShmem266 := by
  rw [getShmemInfo_section, walkStep266]
theorem symbolLength266 : LabToTarget.secLength Padded266.lines 0 = 1236 := by
  kernel_rfl
#print axioms shmemStep266
#print axioms symbolLength266
end InitECandidate.Proofs.BackendStages.Metadata
