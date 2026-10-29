import InitECandidate.Proofs.BackendStages.Metadata.Data792
import InitECandidate.Proofs.BackendStages.Padded792
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem walkStep792 : walkShmemLines Padded792.lines 821540 beforeFfis792 beforeShmem792 = (822888, afterFfis792, afterShmem792) := by
  kernel_rfl
theorem shmemStep792 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded792 :: rest) 821540 beforeFfis792 beforeShmem792 = LabToTarget.getShmemInfo rest 822888 afterFfis792 afterShmem792 := by
  rw [getShmemInfo_section, walkStep792]
theorem symbolLength792 : LabToTarget.secLength Padded792.lines 0 = 1348 := by
  kernel_rfl
#print axioms shmemStep792
#print axioms symbolLength792
end InitECandidate.Proofs.BackendStages.Metadata
