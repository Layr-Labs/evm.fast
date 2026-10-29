import InitECandidate.Proofs.BackendStages.Metadata.Data556
import InitECandidate.Proofs.BackendStages.Padded556
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem walkStep556 : walkShmemLines Padded556.lines 415336 beforeFfis556 beforeShmem556 = (415816, afterFfis556, afterShmem556) := by
  kernel_rfl
theorem shmemStep556 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded556 :: rest) 415336 beforeFfis556 beforeShmem556 = LabToTarget.getShmemInfo rest 415816 afterFfis556 afterShmem556 := by
  rw [getShmemInfo_section, walkStep556]
theorem symbolLength556 : LabToTarget.secLength Padded556.lines 0 = 480 := by
  kernel_rfl
#print axioms shmemStep556
#print axioms symbolLength556
end InitECandidate.Proofs.BackendStages.Metadata
