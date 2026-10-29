import InitECandidate.Proofs.BackendStages.Metadata.Data439
import InitECandidate.Proofs.BackendStages.Padded439
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem walkStep439 : walkShmemLines Padded439.lines 324668 beforeFfis439 beforeShmem439 = (325768, afterFfis439, afterShmem439) := by
  kernel_rfl
theorem shmemStep439 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded439 :: rest) 324668 beforeFfis439 beforeShmem439 = LabToTarget.getShmemInfo rest 325768 afterFfis439 afterShmem439 := by
  rw [getShmemInfo_section, walkStep439]
theorem symbolLength439 : LabToTarget.secLength Padded439.lines 0 = 1100 := by
  kernel_rfl
#print axioms shmemStep439
#print axioms symbolLength439
end InitECandidate.Proofs.BackendStages.Metadata
