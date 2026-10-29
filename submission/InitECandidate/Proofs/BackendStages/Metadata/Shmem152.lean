import InitECandidate.Proofs.BackendStages.Metadata.Data152
import InitECandidate.Proofs.BackendStages.Padded152
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem walkStep152 : walkShmemLines Padded152.lines 51600 beforeFfis152 beforeShmem152 = (51844, afterFfis152, afterShmem152) := by
  kernel_rfl
theorem shmemStep152 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded152 :: rest) 51600 beforeFfis152 beforeShmem152 = LabToTarget.getShmemInfo rest 51844 afterFfis152 afterShmem152 := by
  rw [getShmemInfo_section, walkStep152]
theorem symbolLength152 : LabToTarget.secLength Padded152.lines 0 = 244 := by
  kernel_rfl
#print axioms shmemStep152
#print axioms symbolLength152
end InitECandidate.Proofs.BackendStages.Metadata
