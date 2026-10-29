import InitECandidate.Proofs.BackendStages.Metadata.Data4
import InitECandidate.Proofs.BackendStages.Padded4
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem walkStep4 : walkShmemLines Padded4.lines 772 beforeFfis4 beforeShmem4 = (812, afterFfis4, afterShmem4) := by
  kernel_rfl
theorem shmemStep4 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded4 :: rest) 772 beforeFfis4 beforeShmem4 = LabToTarget.getShmemInfo rest 812 afterFfis4 afterShmem4 := by
  rw [getShmemInfo_section, walkStep4]
theorem symbolLength4 : LabToTarget.secLength Padded4.lines 0 = 40 := by
  kernel_rfl
#print axioms shmemStep4
#print axioms symbolLength4
end InitECandidate.Proofs.BackendStages.Metadata
