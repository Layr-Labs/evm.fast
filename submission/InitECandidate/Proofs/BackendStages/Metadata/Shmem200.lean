import InitECandidate.Proofs.BackendStages.Metadata.Data200
import InitECandidate.Proofs.BackendStages.Padded200
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem walkStep200 : walkShmemLines Padded200.lines 106444 beforeFfis200 beforeShmem200 = (107668, afterFfis200, afterShmem200) := by
  kernel_rfl
theorem shmemStep200 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded200 :: rest) 106444 beforeFfis200 beforeShmem200 = LabToTarget.getShmemInfo rest 107668 afterFfis200 afterShmem200 := by
  rw [getShmemInfo_section, walkStep200]
theorem symbolLength200 : LabToTarget.secLength Padded200.lines 0 = 1224 := by
  kernel_rfl
#print axioms shmemStep200
#print axioms symbolLength200
end InitECandidate.Proofs.BackendStages.Metadata
