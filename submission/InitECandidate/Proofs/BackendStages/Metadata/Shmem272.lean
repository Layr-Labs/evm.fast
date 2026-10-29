import InitECandidate.Proofs.BackendStages.Metadata.Data272
import InitECandidate.Proofs.BackendStages.Padded272
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem walkStep272 : walkShmemLines Padded272.lines 208784 beforeFfis272 beforeShmem272 = (209000, afterFfis272, afterShmem272) := by
  kernel_rfl
theorem shmemStep272 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded272 :: rest) 208784 beforeFfis272 beforeShmem272 = LabToTarget.getShmemInfo rest 209000 afterFfis272 afterShmem272 := by
  rw [getShmemInfo_section, walkStep272]
theorem symbolLength272 : LabToTarget.secLength Padded272.lines 0 = 216 := by
  kernel_rfl
#print axioms shmemStep272
#print axioms symbolLength272
end InitECandidate.Proofs.BackendStages.Metadata
