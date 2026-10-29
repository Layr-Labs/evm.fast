import InitECandidate.Proofs.BackendStages.Metadata.Data404
import InitECandidate.Proofs.BackendStages.Padded404
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem walkStep404 : walkShmemLines Padded404.lines 305952 beforeFfis404 beforeShmem404 = (306524, afterFfis404, afterShmem404) := by
  kernel_rfl
theorem shmemStep404 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded404 :: rest) 305952 beforeFfis404 beforeShmem404 = LabToTarget.getShmemInfo rest 306524 afterFfis404 afterShmem404 := by
  rw [getShmemInfo_section, walkStep404]
theorem symbolLength404 : LabToTarget.secLength Padded404.lines 0 = 572 := by
  kernel_rfl
#print axioms shmemStep404
#print axioms symbolLength404
end InitECandidate.Proofs.BackendStages.Metadata
