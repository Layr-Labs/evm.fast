import InitECandidate.Proofs.BackendStages.Metadata.Data757
import InitECandidate.Proofs.BackendStages.Padded757
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem walkStep757 : walkShmemLines Padded757.lines 755564 beforeFfis757 beforeShmem757 = (756220, afterFfis757, afterShmem757) := by
  kernel_rfl
theorem shmemStep757 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded757 :: rest) 755564 beforeFfis757 beforeShmem757 = LabToTarget.getShmemInfo rest 756220 afterFfis757 afterShmem757 := by
  rw [getShmemInfo_section, walkStep757]
theorem symbolLength757 : LabToTarget.secLength Padded757.lines 0 = 656 := by
  kernel_rfl
#print axioms shmemStep757
#print axioms symbolLength757
end InitECandidate.Proofs.BackendStages.Metadata
