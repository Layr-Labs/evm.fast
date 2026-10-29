import InitECandidate.Proofs.BackendStages.Metadata.Data727
import InitECandidate.Proofs.BackendStages.Padded727
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem walkStep727 : walkShmemLines Padded727.lines 731828 beforeFfis727 beforeShmem727 = (732664, afterFfis727, afterShmem727) := by
  kernel_rfl
theorem shmemStep727 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded727 :: rest) 731828 beforeFfis727 beforeShmem727 = LabToTarget.getShmemInfo rest 732664 afterFfis727 afterShmem727 := by
  rw [getShmemInfo_section, walkStep727]
theorem symbolLength727 : LabToTarget.secLength Padded727.lines 0 = 836 := by
  kernel_rfl
#print axioms shmemStep727
#print axioms symbolLength727
end InitECandidate.Proofs.BackendStages.Metadata
