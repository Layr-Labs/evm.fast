import InitECandidate.Proofs.BackendStages.Metadata.Data105
import InitECandidate.Proofs.BackendStages.Padded105
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem walkStep105 : walkShmemLines Padded105.lines 11008 beforeFfis105 beforeShmem105 = (11060, afterFfis105, afterShmem105) := by
  kernel_rfl
theorem shmemStep105 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded105 :: rest) 11008 beforeFfis105 beforeShmem105 = LabToTarget.getShmemInfo rest 11060 afterFfis105 afterShmem105 := by
  rw [getShmemInfo_section, walkStep105]
theorem symbolLength105 : LabToTarget.secLength Padded105.lines 0 = 52 := by
  kernel_rfl
#print axioms shmemStep105
#print axioms symbolLength105
end InitECandidate.Proofs.BackendStages.Metadata
