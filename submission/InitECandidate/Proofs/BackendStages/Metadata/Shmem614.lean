import InitECandidate.Proofs.BackendStages.Metadata.Data614
import InitECandidate.Proofs.BackendStages.Padded614
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem walkStep614 : walkShmemLines Padded614.lines 484600 beforeFfis614 beforeShmem614 = (485976, afterFfis614, afterShmem614) := by
  kernel_rfl
theorem shmemStep614 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded614 :: rest) 484600 beforeFfis614 beforeShmem614 = LabToTarget.getShmemInfo rest 485976 afterFfis614 afterShmem614 := by
  rw [getShmemInfo_section, walkStep614]
theorem symbolLength614 : LabToTarget.secLength Padded614.lines 0 = 1376 := by
  kernel_rfl
#print axioms shmemStep614
#print axioms symbolLength614
end InitECandidate.Proofs.BackendStages.Metadata
