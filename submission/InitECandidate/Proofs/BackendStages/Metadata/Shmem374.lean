import InitECandidate.Proofs.BackendStages.Metadata.Data374
import InitECandidate.Proofs.BackendStages.Padded374
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem walkStep374 : walkShmemLines Padded374.lines 287176 beforeFfis374 beforeShmem374 = (287192, afterFfis374, afterShmem374) := by
  kernel_rfl
theorem shmemStep374 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded374 :: rest) 287176 beforeFfis374 beforeShmem374 = LabToTarget.getShmemInfo rest 287192 afterFfis374 afterShmem374 := by
  rw [getShmemInfo_section, walkStep374]
theorem symbolLength374 : LabToTarget.secLength Padded374.lines 0 = 16 := by
  kernel_rfl
#print axioms shmemStep374
#print axioms symbolLength374
end InitECandidate.Proofs.BackendStages.Metadata
