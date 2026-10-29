import InitECandidate.Proofs.BackendStages.Metadata.Data65
import InitECandidate.Proofs.BackendStages.Padded65
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem walkStep65 : walkShmemLines Padded65.lines 1820 beforeFfis65 beforeShmem65 = (4700, afterFfis65, afterShmem65) := by
  kernel_rfl
theorem shmemStep65 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded65 :: rest) 1820 beforeFfis65 beforeShmem65 = LabToTarget.getShmemInfo rest 4700 afterFfis65 afterShmem65 := by
  rw [getShmemInfo_section, walkStep65]
theorem symbolLength65 : LabToTarget.secLength Padded65.lines 0 = 2880 := by
  kernel_rfl
#print axioms shmemStep65
#print axioms symbolLength65
end InitECandidate.Proofs.BackendStages.Metadata
