import InitECandidate.Proofs.BackendStages.Metadata.Data756
import InitECandidate.Proofs.BackendStages.Padded756
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem walkStep756 : walkShmemLines Padded756.lines 755300 beforeFfis756 beforeShmem756 = (755564, afterFfis756, afterShmem756) := by
  kernel_rfl
theorem shmemStep756 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded756 :: rest) 755300 beforeFfis756 beforeShmem756 = LabToTarget.getShmemInfo rest 755564 afterFfis756 afterShmem756 := by
  rw [getShmemInfo_section, walkStep756]
theorem symbolLength756 : LabToTarget.secLength Padded756.lines 0 = 264 := by
  kernel_rfl
#print axioms shmemStep756
#print axioms symbolLength756
end InitECandidate.Proofs.BackendStages.Metadata
