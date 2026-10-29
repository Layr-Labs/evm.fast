import InitECandidate.Proofs.BackendStages.Metadata.Data91
import InitECandidate.Proofs.BackendStages.Padded91
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem walkStep91 : walkShmemLines Padded91.lines 9732 beforeFfis91 beforeShmem91 = (9804, afterFfis91, afterShmem91) := by
  kernel_rfl
theorem shmemStep91 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded91 :: rest) 9732 beforeFfis91 beforeShmem91 = LabToTarget.getShmemInfo rest 9804 afterFfis91 afterShmem91 := by
  rw [getShmemInfo_section, walkStep91]
theorem symbolLength91 : LabToTarget.secLength Padded91.lines 0 = 72 := by
  kernel_rfl
#print axioms shmemStep91
#print axioms symbolLength91
end InitECandidate.Proofs.BackendStages.Metadata
