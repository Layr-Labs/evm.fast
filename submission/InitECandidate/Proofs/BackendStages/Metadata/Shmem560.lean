import InitECandidate.Proofs.BackendStages.Metadata.Data560
import InitECandidate.Proofs.BackendStages.Padded560
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem walkStep560 : walkShmemLines Padded560.lines 417856 beforeFfis560 beforeShmem560 = (419920, afterFfis560, afterShmem560) := by
  kernel_rfl
theorem shmemStep560 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded560 :: rest) 417856 beforeFfis560 beforeShmem560 = LabToTarget.getShmemInfo rest 419920 afterFfis560 afterShmem560 := by
  rw [getShmemInfo_section, walkStep560]
theorem symbolLength560 : LabToTarget.secLength Padded560.lines 0 = 2064 := by
  kernel_rfl
#print axioms shmemStep560
#print axioms symbolLength560
end InitECandidate.Proofs.BackendStages.Metadata
