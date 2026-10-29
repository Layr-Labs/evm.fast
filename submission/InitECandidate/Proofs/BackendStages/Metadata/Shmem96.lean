import InitECandidate.Proofs.BackendStages.Metadata.Data96
import InitECandidate.Proofs.BackendStages.Padded96
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem walkStep96 : walkShmemLines Padded96.lines 10272 beforeFfis96 beforeShmem96 = (10412, afterFfis96, afterShmem96) := by
  kernel_rfl
theorem shmemStep96 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded96 :: rest) 10272 beforeFfis96 beforeShmem96 = LabToTarget.getShmemInfo rest 10412 afterFfis96 afterShmem96 := by
  rw [getShmemInfo_section, walkStep96]
theorem symbolLength96 : LabToTarget.secLength Padded96.lines 0 = 140 := by
  kernel_rfl
#print axioms shmemStep96
#print axioms symbolLength96
end InitECandidate.Proofs.BackendStages.Metadata
