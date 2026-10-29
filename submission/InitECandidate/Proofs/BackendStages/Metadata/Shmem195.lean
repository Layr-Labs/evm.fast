import InitECandidate.Proofs.BackendStages.Metadata.Data195
import InitECandidate.Proofs.BackendStages.Padded195
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem walkStep195 : walkShmemLines Padded195.lines 104588 beforeFfis195 beforeShmem195 = (104596, afterFfis195, afterShmem195) := by
  kernel_rfl
theorem shmemStep195 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded195 :: rest) 104588 beforeFfis195 beforeShmem195 = LabToTarget.getShmemInfo rest 104596 afterFfis195 afterShmem195 := by
  rw [getShmemInfo_section, walkStep195]
theorem symbolLength195 : LabToTarget.secLength Padded195.lines 0 = 8 := by
  kernel_rfl
#print axioms shmemStep195
#print axioms symbolLength195
end InitECandidate.Proofs.BackendStages.Metadata
