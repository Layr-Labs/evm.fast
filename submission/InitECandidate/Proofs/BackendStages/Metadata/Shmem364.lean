import InitECandidate.Proofs.BackendStages.Metadata.Data364
import InitECandidate.Proofs.BackendStages.Padded364
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem walkStep364 : walkShmemLines Padded364.lines 280748 beforeFfis364 beforeShmem364 = (281144, afterFfis364, afterShmem364) := by
  kernel_rfl
theorem shmemStep364 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded364 :: rest) 280748 beforeFfis364 beforeShmem364 = LabToTarget.getShmemInfo rest 281144 afterFfis364 afterShmem364 := by
  rw [getShmemInfo_section, walkStep364]
theorem symbolLength364 : LabToTarget.secLength Padded364.lines 0 = 396 := by
  kernel_rfl
#print axioms shmemStep364
#print axioms symbolLength364
end InitECandidate.Proofs.BackendStages.Metadata
