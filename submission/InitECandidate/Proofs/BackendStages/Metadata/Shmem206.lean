import InitECandidate.Proofs.BackendStages.Metadata.Data206
import InitECandidate.Proofs.BackendStages.Padded206
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem walkStep206 : walkShmemLines Padded206.lines 109192 beforeFfis206 beforeShmem206 = (114652, afterFfis206, afterShmem206) := by
  kernel_rfl
theorem shmemStep206 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded206 :: rest) 109192 beforeFfis206 beforeShmem206 = LabToTarget.getShmemInfo rest 114652 afterFfis206 afterShmem206 := by
  rw [getShmemInfo_section, walkStep206]
theorem symbolLength206 : LabToTarget.secLength Padded206.lines 0 = 5460 := by
  kernel_rfl
#print axioms shmemStep206
#print axioms symbolLength206
end InitECandidate.Proofs.BackendStages.Metadata
