import InitECandidate.Proofs.BackendStages.Metadata.Data365
import InitECandidate.Proofs.BackendStages.Padded365
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem walkStep365 : walkShmemLines Padded365.lines 281144 beforeFfis365 beforeShmem365 = (282716, afterFfis365, afterShmem365) := by
  kernel_rfl
theorem shmemStep365 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded365 :: rest) 281144 beforeFfis365 beforeShmem365 = LabToTarget.getShmemInfo rest 282716 afterFfis365 afterShmem365 := by
  rw [getShmemInfo_section, walkStep365]
theorem symbolLength365 : LabToTarget.secLength Padded365.lines 0 = 1572 := by
  kernel_rfl
#print axioms shmemStep365
#print axioms symbolLength365
end InitECandidate.Proofs.BackendStages.Metadata
