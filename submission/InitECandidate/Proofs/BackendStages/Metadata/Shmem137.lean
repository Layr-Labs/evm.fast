import InitECandidate.Proofs.BackendStages.Metadata.Data137
import InitECandidate.Proofs.BackendStages.Padded137
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem walkStep137 : walkShmemLines Padded137.lines 26312 beforeFfis137 beforeShmem137 = (26468, afterFfis137, afterShmem137) := by
  kernel_rfl
theorem shmemStep137 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded137 :: rest) 26312 beforeFfis137 beforeShmem137 = LabToTarget.getShmemInfo rest 26468 afterFfis137 afterShmem137 := by
  rw [getShmemInfo_section, walkStep137]
theorem symbolLength137 : LabToTarget.secLength Padded137.lines 0 = 156 := by
  kernel_rfl
#print axioms shmemStep137
#print axioms symbolLength137
end InitECandidate.Proofs.BackendStages.Metadata
