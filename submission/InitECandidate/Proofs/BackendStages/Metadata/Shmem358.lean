import InitECandidate.Proofs.BackendStages.Metadata.Data358
import InitECandidate.Proofs.BackendStages.Padded358
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem walkStep358 : walkShmemLines Padded358.lines 277308 beforeFfis358 beforeShmem358 = (277516, afterFfis358, afterShmem358) := by
  kernel_rfl
theorem shmemStep358 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded358 :: rest) 277308 beforeFfis358 beforeShmem358 = LabToTarget.getShmemInfo rest 277516 afterFfis358 afterShmem358 := by
  rw [getShmemInfo_section, walkStep358]
theorem symbolLength358 : LabToTarget.secLength Padded358.lines 0 = 208 := by
  kernel_rfl
#print axioms shmemStep358
#print axioms symbolLength358
end InitECandidate.Proofs.BackendStages.Metadata
