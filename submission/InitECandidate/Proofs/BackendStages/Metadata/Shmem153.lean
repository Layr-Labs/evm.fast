import InitECandidate.Proofs.BackendStages.Metadata.Data153
import InitECandidate.Proofs.BackendStages.Padded153
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem walkStep153 : walkShmemLines Padded153.lines 51844 beforeFfis153 beforeShmem153 = (53120, afterFfis153, afterShmem153) := by
  kernel_rfl
theorem shmemStep153 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded153 :: rest) 51844 beforeFfis153 beforeShmem153 = LabToTarget.getShmemInfo rest 53120 afterFfis153 afterShmem153 := by
  rw [getShmemInfo_section, walkStep153]
theorem symbolLength153 : LabToTarget.secLength Padded153.lines 0 = 1276 := by
  kernel_rfl
#print axioms shmemStep153
#print axioms symbolLength153
end InitECandidate.Proofs.BackendStages.Metadata
