import InitECandidate.Proofs.BackendStages.Metadata.Data830
import InitECandidate.Proofs.BackendStages.Padded830
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem walkStep830 : walkShmemLines Padded830.lines 896196 beforeFfis830 beforeShmem830 = (896552, afterFfis830, afterShmem830) := by
  kernel_rfl
theorem shmemStep830 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded830 :: rest) 896196 beforeFfis830 beforeShmem830 = LabToTarget.getShmemInfo rest 896552 afterFfis830 afterShmem830 := by
  rw [getShmemInfo_section, walkStep830]
theorem symbolLength830 : LabToTarget.secLength Padded830.lines 0 = 356 := by
  kernel_rfl
#print axioms shmemStep830
#print axioms symbolLength830
end InitECandidate.Proofs.BackendStages.Metadata
