import InitECandidate.Proofs.BackendStages.Metadata.Data188
import InitECandidate.Proofs.BackendStages.Padded188
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem walkStep188 : walkShmemLines Padded188.lines 100224 beforeFfis188 beforeShmem188 = (100460, afterFfis188, afterShmem188) := by
  kernel_rfl
theorem shmemStep188 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded188 :: rest) 100224 beforeFfis188 beforeShmem188 = LabToTarget.getShmemInfo rest 100460 afterFfis188 afterShmem188 := by
  rw [getShmemInfo_section, walkStep188]
theorem symbolLength188 : LabToTarget.secLength Padded188.lines 0 = 236 := by
  kernel_rfl
#print axioms shmemStep188
#print axioms symbolLength188
end InitECandidate.Proofs.BackendStages.Metadata
