import InitECandidate.Proofs.BackendStages.Metadata.Data563
import InitECandidate.Proofs.BackendStages.Padded563
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem walkStep563 : walkShmemLines Padded563.lines 420460 beforeFfis563 beforeShmem563 = (420628, afterFfis563, afterShmem563) := by
  kernel_rfl
theorem shmemStep563 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded563 :: rest) 420460 beforeFfis563 beforeShmem563 = LabToTarget.getShmemInfo rest 420628 afterFfis563 afterShmem563 := by
  rw [getShmemInfo_section, walkStep563]
theorem symbolLength563 : LabToTarget.secLength Padded563.lines 0 = 168 := by
  kernel_rfl
#print axioms shmemStep563
#print axioms symbolLength563
end InitECandidate.Proofs.BackendStages.Metadata
