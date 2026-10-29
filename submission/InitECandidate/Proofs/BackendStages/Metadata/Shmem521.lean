import InitECandidate.Proofs.BackendStages.Metadata.Data521
import InitECandidate.Proofs.BackendStages.Padded521
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem walkStep521 : walkShmemLines Padded521.lines 386132 beforeFfis521 beforeShmem521 = (387052, afterFfis521, afterShmem521) := by
  kernel_rfl
theorem shmemStep521 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded521 :: rest) 386132 beforeFfis521 beforeShmem521 = LabToTarget.getShmemInfo rest 387052 afterFfis521 afterShmem521 := by
  rw [getShmemInfo_section, walkStep521]
theorem symbolLength521 : LabToTarget.secLength Padded521.lines 0 = 920 := by
  kernel_rfl
#print axioms shmemStep521
#print axioms symbolLength521
end InitECandidate.Proofs.BackendStages.Metadata
