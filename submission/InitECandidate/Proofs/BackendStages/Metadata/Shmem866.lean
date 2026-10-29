import InitECandidate.Proofs.BackendStages.Metadata.Data866
import InitECandidate.Proofs.BackendStages.Padded866
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem walkStep866 : walkShmemLines Padded866.lines 964896 beforeFfis866 beforeShmem866 = (965328, afterFfis866, afterShmem866) := by
  kernel_rfl
theorem shmemStep866 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded866 :: rest) 964896 beforeFfis866 beforeShmem866 = LabToTarget.getShmemInfo rest 965328 afterFfis866 afterShmem866 := by
  rw [getShmemInfo_section, walkStep866]
theorem symbolLength866 : LabToTarget.secLength Padded866.lines 0 = 432 := by
  kernel_rfl
#print axioms shmemStep866
#print axioms symbolLength866
end InitECandidate.Proofs.BackendStages.Metadata
