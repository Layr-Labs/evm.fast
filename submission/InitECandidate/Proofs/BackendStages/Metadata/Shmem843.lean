import InitECandidate.Proofs.BackendStages.Metadata.Data843
import InitECandidate.Proofs.BackendStages.Padded843
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem walkStep843 : walkShmemLines Padded843.lines 912180 beforeFfis843 beforeShmem843 = (913376, afterFfis843, afterShmem843) := by
  kernel_rfl
theorem shmemStep843 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded843 :: rest) 912180 beforeFfis843 beforeShmem843 = LabToTarget.getShmemInfo rest 913376 afterFfis843 afterShmem843 := by
  rw [getShmemInfo_section, walkStep843]
theorem symbolLength843 : LabToTarget.secLength Padded843.lines 0 = 1196 := by
  kernel_rfl
#print axioms shmemStep843
#print axioms symbolLength843
end InitECandidate.Proofs.BackendStages.Metadata
