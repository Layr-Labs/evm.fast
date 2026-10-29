import InitECandidate.Proofs.BackendStages.Metadata.Data83
import InitECandidate.Proofs.BackendStages.Padded83
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem walkStep83 : walkShmemLines Padded83.lines 8212 beforeFfis83 beforeShmem83 = (8268, afterFfis83, afterShmem83) := by
  kernel_rfl
theorem shmemStep83 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded83 :: rest) 8212 beforeFfis83 beforeShmem83 = LabToTarget.getShmemInfo rest 8268 afterFfis83 afterShmem83 := by
  rw [getShmemInfo_section, walkStep83]
theorem symbolLength83 : LabToTarget.secLength Padded83.lines 0 = 56 := by
  kernel_rfl
#print axioms shmemStep83
#print axioms symbolLength83
end InitECandidate.Proofs.BackendStages.Metadata
