import InitECandidate.Proofs.BackendStages.Metadata.Data440
import InitECandidate.Proofs.BackendStages.Padded440
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem walkStep440 : walkShmemLines Padded440.lines 325768 beforeFfis440 beforeShmem440 = (326060, afterFfis440, afterShmem440) := by
  kernel_rfl
theorem shmemStep440 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded440 :: rest) 325768 beforeFfis440 beforeShmem440 = LabToTarget.getShmemInfo rest 326060 afterFfis440 afterShmem440 := by
  rw [getShmemInfo_section, walkStep440]
theorem symbolLength440 : LabToTarget.secLength Padded440.lines 0 = 292 := by
  kernel_rfl
#print axioms shmemStep440
#print axioms symbolLength440
end InitECandidate.Proofs.BackendStages.Metadata
