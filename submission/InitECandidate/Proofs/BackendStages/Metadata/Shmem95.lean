import InitECandidate.Proofs.BackendStages.Metadata.Data95
import InitECandidate.Proofs.BackendStages.Padded95
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem walkStep95 : walkShmemLines Padded95.lines 10128 beforeFfis95 beforeShmem95 = (10272, afterFfis95, afterShmem95) := by
  kernel_rfl
theorem shmemStep95 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded95 :: rest) 10128 beforeFfis95 beforeShmem95 = LabToTarget.getShmemInfo rest 10272 afterFfis95 afterShmem95 := by
  rw [getShmemInfo_section, walkStep95]
theorem symbolLength95 : LabToTarget.secLength Padded95.lines 0 = 144 := by
  kernel_rfl
#print axioms shmemStep95
#print axioms symbolLength95
end InitECandidate.Proofs.BackendStages.Metadata
