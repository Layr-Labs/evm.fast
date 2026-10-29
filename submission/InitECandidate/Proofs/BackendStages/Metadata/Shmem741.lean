import InitECandidate.Proofs.BackendStages.Metadata.Data741
import InitECandidate.Proofs.BackendStages.Padded741
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem walkStep741 : walkShmemLines Padded741.lines 740876 beforeFfis741 beforeShmem741 = (741508, afterFfis741, afterShmem741) := by
  kernel_rfl
theorem shmemStep741 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded741 :: rest) 740876 beforeFfis741 beforeShmem741 = LabToTarget.getShmemInfo rest 741508 afterFfis741 afterShmem741 := by
  rw [getShmemInfo_section, walkStep741]
theorem symbolLength741 : LabToTarget.secLength Padded741.lines 0 = 632 := by
  kernel_rfl
#print axioms shmemStep741
#print axioms symbolLength741
end InitECandidate.Proofs.BackendStages.Metadata
