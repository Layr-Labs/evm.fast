import InitECandidate.Proofs.BackendStages.Metadata.Data434
import InitECandidate.Proofs.BackendStages.Padded434
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem walkStep434 : walkShmemLines Padded434.lines 322876 beforeFfis434 beforeShmem434 = (322960, afterFfis434, afterShmem434) := by
  kernel_rfl
theorem shmemStep434 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded434 :: rest) 322876 beforeFfis434 beforeShmem434 = LabToTarget.getShmemInfo rest 322960 afterFfis434 afterShmem434 := by
  rw [getShmemInfo_section, walkStep434]
theorem symbolLength434 : LabToTarget.secLength Padded434.lines 0 = 84 := by
  kernel_rfl
#print axioms shmemStep434
#print axioms symbolLength434
end InitECandidate.Proofs.BackendStages.Metadata
