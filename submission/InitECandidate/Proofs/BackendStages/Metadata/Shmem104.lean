import InitECandidate.Proofs.BackendStages.Metadata.Data104
import InitECandidate.Proofs.BackendStages.Padded104
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem walkStep104 : walkShmemLines Padded104.lines 10808 beforeFfis104 beforeShmem104 = (11008, afterFfis104, afterShmem104) := by
  kernel_rfl
theorem shmemStep104 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded104 :: rest) 10808 beforeFfis104 beforeShmem104 = LabToTarget.getShmemInfo rest 11008 afterFfis104 afterShmem104 := by
  rw [getShmemInfo_section, walkStep104]
theorem symbolLength104 : LabToTarget.secLength Padded104.lines 0 = 200 := by
  kernel_rfl
#print axioms shmemStep104
#print axioms symbolLength104
end InitECandidate.Proofs.BackendStages.Metadata
