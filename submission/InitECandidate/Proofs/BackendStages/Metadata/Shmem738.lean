import InitECandidate.Proofs.BackendStages.Metadata.Data738
import InitECandidate.Proofs.BackendStages.Padded738
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem walkStep738 : walkShmemLines Padded738.lines 736036 beforeFfis738 beforeShmem738 = (736376, afterFfis738, afterShmem738) := by
  kernel_rfl
theorem shmemStep738 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded738 :: rest) 736036 beforeFfis738 beforeShmem738 = LabToTarget.getShmemInfo rest 736376 afterFfis738 afterShmem738 := by
  rw [getShmemInfo_section, walkStep738]
theorem symbolLength738 : LabToTarget.secLength Padded738.lines 0 = 340 := by
  kernel_rfl
#print axioms shmemStep738
#print axioms symbolLength738
end InitECandidate.Proofs.BackendStages.Metadata
