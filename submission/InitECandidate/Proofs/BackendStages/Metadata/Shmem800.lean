import InitECandidate.Proofs.BackendStages.Metadata.Data800
import InitECandidate.Proofs.BackendStages.Padded800
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem walkStep800 : walkShmemLines Padded800.lines 846584 beforeFfis800 beforeShmem800 = (849808, afterFfis800, afterShmem800) := by
  kernel_rfl
theorem shmemStep800 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded800 :: rest) 846584 beforeFfis800 beforeShmem800 = LabToTarget.getShmemInfo rest 849808 afterFfis800 afterShmem800 := by
  rw [getShmemInfo_section, walkStep800]
theorem symbolLength800 : LabToTarget.secLength Padded800.lines 0 = 3224 := by
  kernel_rfl
#print axioms shmemStep800
#print axioms symbolLength800
end InitECandidate.Proofs.BackendStages.Metadata
