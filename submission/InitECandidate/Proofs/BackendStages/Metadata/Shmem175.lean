import InitECandidate.Proofs.BackendStages.Metadata.Data175
import InitECandidate.Proofs.BackendStages.Padded175
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem walkStep175 : walkShmemLines Padded175.lines 96452 beforeFfis175 beforeShmem175 = (96624, afterFfis175, afterShmem175) := by
  kernel_rfl
theorem shmemStep175 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded175 :: rest) 96452 beforeFfis175 beforeShmem175 = LabToTarget.getShmemInfo rest 96624 afterFfis175 afterShmem175 := by
  rw [getShmemInfo_section, walkStep175]
theorem symbolLength175 : LabToTarget.secLength Padded175.lines 0 = 172 := by
  kernel_rfl
#print axioms shmemStep175
#print axioms symbolLength175
end InitECandidate.Proofs.BackendStages.Metadata
