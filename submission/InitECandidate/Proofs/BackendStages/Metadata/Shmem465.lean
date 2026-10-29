import InitECandidate.Proofs.BackendStages.Metadata.Data465
import InitECandidate.Proofs.BackendStages.Padded465
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem walkStep465 : walkShmemLines Padded465.lines 357092 beforeFfis465 beforeShmem465 = (357236, afterFfis465, afterShmem465) := by
  kernel_rfl
theorem shmemStep465 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded465 :: rest) 357092 beforeFfis465 beforeShmem465 = LabToTarget.getShmemInfo rest 357236 afterFfis465 afterShmem465 := by
  rw [getShmemInfo_section, walkStep465]
theorem symbolLength465 : LabToTarget.secLength Padded465.lines 0 = 144 := by
  kernel_rfl
#print axioms shmemStep465
#print axioms symbolLength465
end InitECandidate.Proofs.BackendStages.Metadata
