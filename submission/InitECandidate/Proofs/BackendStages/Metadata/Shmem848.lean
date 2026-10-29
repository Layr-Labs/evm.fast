import InitECandidate.Proofs.BackendStages.Metadata.Data848
import InitECandidate.Proofs.BackendStages.Padded848
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem walkStep848 : walkShmemLines Padded848.lines 917144 beforeFfis848 beforeShmem848 = (921632, afterFfis848, afterShmem848) := by
  kernel_rfl
theorem shmemStep848 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded848 :: rest) 917144 beforeFfis848 beforeShmem848 = LabToTarget.getShmemInfo rest 921632 afterFfis848 afterShmem848 := by
  rw [getShmemInfo_section, walkStep848]
theorem symbolLength848 : LabToTarget.secLength Padded848.lines 0 = 4488 := by
  kernel_rfl
#print axioms shmemStep848
#print axioms symbolLength848
end InitECandidate.Proofs.BackendStages.Metadata
