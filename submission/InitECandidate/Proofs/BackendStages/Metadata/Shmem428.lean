import InitECandidate.Proofs.BackendStages.Metadata.Data428
import InitECandidate.Proofs.BackendStages.Padded428
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem walkStep428 : walkShmemLines Padded428.lines 318432 beforeFfis428 beforeShmem428 = (319020, afterFfis428, afterShmem428) := by
  kernel_rfl
theorem shmemStep428 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded428 :: rest) 318432 beforeFfis428 beforeShmem428 = LabToTarget.getShmemInfo rest 319020 afterFfis428 afterShmem428 := by
  rw [getShmemInfo_section, walkStep428]
theorem symbolLength428 : LabToTarget.secLength Padded428.lines 0 = 588 := by
  kernel_rfl
#print axioms shmemStep428
#print axioms symbolLength428
end InitECandidate.Proofs.BackendStages.Metadata
