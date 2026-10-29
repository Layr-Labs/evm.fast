import InitECandidate.Proofs.BackendStages.Metadata.Data448
import InitECandidate.Proofs.BackendStages.Padded448
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem walkStep448 : walkShmemLines Padded448.lines 328876 beforeFfis448 beforeShmem448 = (329344, afterFfis448, afterShmem448) := by
  kernel_rfl
theorem shmemStep448 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded448 :: rest) 328876 beforeFfis448 beforeShmem448 = LabToTarget.getShmemInfo rest 329344 afterFfis448 afterShmem448 := by
  rw [getShmemInfo_section, walkStep448]
theorem symbolLength448 : LabToTarget.secLength Padded448.lines 0 = 468 := by
  kernel_rfl
#print axioms shmemStep448
#print axioms symbolLength448
end InitECandidate.Proofs.BackendStages.Metadata
