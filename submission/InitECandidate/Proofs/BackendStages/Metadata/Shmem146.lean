import InitECandidate.Proofs.BackendStages.Metadata.Data146
import InitECandidate.Proofs.BackendStages.Padded146
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem walkStep146 : walkShmemLines Padded146.lines 30392 beforeFfis146 beforeShmem146 = (31148, afterFfis146, afterShmem146) := by
  kernel_rfl
theorem shmemStep146 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded146 :: rest) 30392 beforeFfis146 beforeShmem146 = LabToTarget.getShmemInfo rest 31148 afterFfis146 afterShmem146 := by
  rw [getShmemInfo_section, walkStep146]
theorem symbolLength146 : LabToTarget.secLength Padded146.lines 0 = 756 := by
  kernel_rfl
#print axioms shmemStep146
#print axioms symbolLength146
end InitECandidate.Proofs.BackendStages.Metadata
