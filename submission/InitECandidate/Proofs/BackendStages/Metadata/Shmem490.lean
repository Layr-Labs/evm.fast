import InitECandidate.Proofs.BackendStages.Metadata.Data490
import InitECandidate.Proofs.BackendStages.Padded490
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem walkStep490 : walkShmemLines Padded490.lines 366644 beforeFfis490 beforeShmem490 = (366680, afterFfis490, afterShmem490) := by
  kernel_rfl
theorem shmemStep490 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded490 :: rest) 366644 beforeFfis490 beforeShmem490 = LabToTarget.getShmemInfo rest 366680 afterFfis490 afterShmem490 := by
  rw [getShmemInfo_section, walkStep490]
theorem symbolLength490 : LabToTarget.secLength Padded490.lines 0 = 36 := by
  kernel_rfl
#print axioms shmemStep490
#print axioms symbolLength490
end InitECandidate.Proofs.BackendStages.Metadata
