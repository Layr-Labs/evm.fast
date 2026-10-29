import InitECandidate.Proofs.BackendStages.Metadata.Data109
import InitECandidate.Proofs.BackendStages.Padded109
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem walkStep109 : walkShmemLines Padded109.lines 11304 beforeFfis109 beforeShmem109 = (11356, afterFfis109, afterShmem109) := by
  kernel_rfl
theorem shmemStep109 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded109 :: rest) 11304 beforeFfis109 beforeShmem109 = LabToTarget.getShmemInfo rest 11356 afterFfis109 afterShmem109 := by
  rw [getShmemInfo_section, walkStep109]
theorem symbolLength109 : LabToTarget.secLength Padded109.lines 0 = 52 := by
  kernel_rfl
#print axioms shmemStep109
#print axioms symbolLength109
end InitECandidate.Proofs.BackendStages.Metadata
