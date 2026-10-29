import InitECandidate.Proofs.BackendStages.Metadata.Data565
import InitECandidate.Proofs.BackendStages.Padded565
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem walkStep565 : walkShmemLines Padded565.lines 421016 beforeFfis565 beforeShmem565 = (421280, afterFfis565, afterShmem565) := by
  kernel_rfl
theorem shmemStep565 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded565 :: rest) 421016 beforeFfis565 beforeShmem565 = LabToTarget.getShmemInfo rest 421280 afterFfis565 afterShmem565 := by
  rw [getShmemInfo_section, walkStep565]
theorem symbolLength565 : LabToTarget.secLength Padded565.lines 0 = 264 := by
  kernel_rfl
#print axioms shmemStep565
#print axioms symbolLength565
end InitECandidate.Proofs.BackendStages.Metadata
