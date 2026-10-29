import InitECandidate.Proofs.BackendStages.Metadata.Data706
import InitECandidate.Proofs.BackendStages.Padded706
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem walkStep706 : walkShmemLines Padded706.lines 702500 beforeFfis706 beforeShmem706 = (702568, afterFfis706, afterShmem706) := by
  kernel_rfl
theorem shmemStep706 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded706 :: rest) 702500 beforeFfis706 beforeShmem706 = LabToTarget.getShmemInfo rest 702568 afterFfis706 afterShmem706 := by
  rw [getShmemInfo_section, walkStep706]
theorem symbolLength706 : LabToTarget.secLength Padded706.lines 0 = 68 := by
  kernel_rfl
#print axioms shmemStep706
#print axioms symbolLength706
end InitECandidate.Proofs.BackendStages.Metadata
