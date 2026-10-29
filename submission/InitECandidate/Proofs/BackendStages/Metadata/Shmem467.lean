import InitECandidate.Proofs.BackendStages.Metadata.Data467
import InitECandidate.Proofs.BackendStages.Padded467
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem walkStep467 : walkShmemLines Padded467.lines 357688 beforeFfis467 beforeShmem467 = (357836, afterFfis467, afterShmem467) := by
  kernel_rfl
theorem shmemStep467 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded467 :: rest) 357688 beforeFfis467 beforeShmem467 = LabToTarget.getShmemInfo rest 357836 afterFfis467 afterShmem467 := by
  rw [getShmemInfo_section, walkStep467]
theorem symbolLength467 : LabToTarget.secLength Padded467.lines 0 = 148 := by
  kernel_rfl
#print axioms shmemStep467
#print axioms symbolLength467
end InitECandidate.Proofs.BackendStages.Metadata
