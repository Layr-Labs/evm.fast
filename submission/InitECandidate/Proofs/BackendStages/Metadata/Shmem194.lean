import InitECandidate.Proofs.BackendStages.Metadata.Data194
import InitECandidate.Proofs.BackendStages.Padded194
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem walkStep194 : walkShmemLines Padded194.lines 104324 beforeFfis194 beforeShmem194 = (104588, afterFfis194, afterShmem194) := by
  kernel_rfl
theorem shmemStep194 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded194 :: rest) 104324 beforeFfis194 beforeShmem194 = LabToTarget.getShmemInfo rest 104588 afterFfis194 afterShmem194 := by
  rw [getShmemInfo_section, walkStep194]
theorem symbolLength194 : LabToTarget.secLength Padded194.lines 0 = 264 := by
  kernel_rfl
#print axioms shmemStep194
#print axioms symbolLength194
end InitECandidate.Proofs.BackendStages.Metadata
