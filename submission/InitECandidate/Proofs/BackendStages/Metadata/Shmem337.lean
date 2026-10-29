import InitECandidate.Proofs.BackendStages.Metadata.Data337
import InitECandidate.Proofs.BackendStages.Padded337
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem walkStep337 : walkShmemLines Padded337.lines 266328 beforeFfis337 beforeShmem337 = (266584, afterFfis337, afterShmem337) := by
  kernel_rfl
theorem shmemStep337 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded337 :: rest) 266328 beforeFfis337 beforeShmem337 = LabToTarget.getShmemInfo rest 266584 afterFfis337 afterShmem337 := by
  rw [getShmemInfo_section, walkStep337]
theorem symbolLength337 : LabToTarget.secLength Padded337.lines 0 = 256 := by
  kernel_rfl
#print axioms shmemStep337
#print axioms symbolLength337
end InitECandidate.Proofs.BackendStages.Metadata
