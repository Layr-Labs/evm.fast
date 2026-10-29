import InitECandidate.Proofs.BackendStages.Metadata.Data673
import InitECandidate.Proofs.BackendStages.Padded673
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem walkStep673 : walkShmemLines Padded673.lines 603204 beforeFfis673 beforeShmem673 = (603560, afterFfis673, afterShmem673) := by
  kernel_rfl
theorem shmemStep673 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded673 :: rest) 603204 beforeFfis673 beforeShmem673 = LabToTarget.getShmemInfo rest 603560 afterFfis673 afterShmem673 := by
  rw [getShmemInfo_section, walkStep673]
theorem symbolLength673 : LabToTarget.secLength Padded673.lines 0 = 356 := by
  kernel_rfl
#print axioms shmemStep673
#print axioms symbolLength673
end InitECandidate.Proofs.BackendStages.Metadata
