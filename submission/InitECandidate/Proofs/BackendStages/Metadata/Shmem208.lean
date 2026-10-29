import InitECandidate.Proofs.BackendStages.Metadata.Data208
import InitECandidate.Proofs.BackendStages.Padded208
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem walkStep208 : walkShmemLines Padded208.lines 118404 beforeFfis208 beforeShmem208 = (119448, afterFfis208, afterShmem208) := by
  kernel_rfl
theorem shmemStep208 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded208 :: rest) 118404 beforeFfis208 beforeShmem208 = LabToTarget.getShmemInfo rest 119448 afterFfis208 afterShmem208 := by
  rw [getShmemInfo_section, walkStep208]
theorem symbolLength208 : LabToTarget.secLength Padded208.lines 0 = 1044 := by
  kernel_rfl
#print axioms shmemStep208
#print axioms symbolLength208
end InitECandidate.Proofs.BackendStages.Metadata
