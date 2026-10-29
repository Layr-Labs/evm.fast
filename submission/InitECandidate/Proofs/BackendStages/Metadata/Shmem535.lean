import InitECandidate.Proofs.BackendStages.Metadata.Data535
import InitECandidate.Proofs.BackendStages.Padded535
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem walkStep535 : walkShmemLines Padded535.lines 397680 beforeFfis535 beforeShmem535 = (398028, afterFfis535, afterShmem535) := by
  kernel_rfl
theorem shmemStep535 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded535 :: rest) 397680 beforeFfis535 beforeShmem535 = LabToTarget.getShmemInfo rest 398028 afterFfis535 afterShmem535 := by
  rw [getShmemInfo_section, walkStep535]
theorem symbolLength535 : LabToTarget.secLength Padded535.lines 0 = 348 := by
  kernel_rfl
#print axioms shmemStep535
#print axioms symbolLength535
end InitECandidate.Proofs.BackendStages.Metadata
