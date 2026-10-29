import InitECandidate.Proofs.BackendStages.Metadata.Data564
import InitECandidate.Proofs.BackendStages.Padded564
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem walkStep564 : walkShmemLines Padded564.lines 420628 beforeFfis564 beforeShmem564 = (421016, afterFfis564, afterShmem564) := by
  kernel_rfl
theorem shmemStep564 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded564 :: rest) 420628 beforeFfis564 beforeShmem564 = LabToTarget.getShmemInfo rest 421016 afterFfis564 afterShmem564 := by
  rw [getShmemInfo_section, walkStep564]
theorem symbolLength564 : LabToTarget.secLength Padded564.lines 0 = 388 := by
  kernel_rfl
#print axioms shmemStep564
#print axioms symbolLength564
end InitECandidate.Proofs.BackendStages.Metadata
