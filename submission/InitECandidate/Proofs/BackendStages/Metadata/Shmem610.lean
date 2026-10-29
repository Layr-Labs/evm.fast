import InitECandidate.Proofs.BackendStages.Metadata.Data610
import InitECandidate.Proofs.BackendStages.Padded610
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem walkStep610 : walkShmemLines Padded610.lines 482512 beforeFfis610 beforeShmem610 = (483232, afterFfis610, afterShmem610) := by
  kernel_rfl
theorem shmemStep610 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded610 :: rest) 482512 beforeFfis610 beforeShmem610 = LabToTarget.getShmemInfo rest 483232 afterFfis610 afterShmem610 := by
  rw [getShmemInfo_section, walkStep610]
theorem symbolLength610 : LabToTarget.secLength Padded610.lines 0 = 720 := by
  kernel_rfl
#print axioms shmemStep610
#print axioms symbolLength610
end InitECandidate.Proofs.BackendStages.Metadata
