import InitECandidate.Proofs.BackendStages.Metadata.Data126
import InitECandidate.Proofs.BackendStages.Padded126
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem walkStep126 : walkShmemLines Padded126.lines 18592 beforeFfis126 beforeShmem126 = (18656, afterFfis126, afterShmem126) := by
  kernel_rfl
theorem shmemStep126 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded126 :: rest) 18592 beforeFfis126 beforeShmem126 = LabToTarget.getShmemInfo rest 18656 afterFfis126 afterShmem126 := by
  rw [getShmemInfo_section, walkStep126]
theorem symbolLength126 : LabToTarget.secLength Padded126.lines 0 = 64 := by
  kernel_rfl
#print axioms shmemStep126
#print axioms symbolLength126
end InitECandidate.Proofs.BackendStages.Metadata
