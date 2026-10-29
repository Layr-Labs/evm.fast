import InitECandidate.Proofs.BackendStages.Metadata.Data796
import InitECandidate.Proofs.BackendStages.Padded796
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem walkStep796 : walkShmemLines Padded796.lines 829280 beforeFfis796 beforeShmem796 = (839472, afterFfis796, afterShmem796) := by
  kernel_rfl
theorem shmemStep796 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded796 :: rest) 829280 beforeFfis796 beforeShmem796 = LabToTarget.getShmemInfo rest 839472 afterFfis796 afterShmem796 := by
  rw [getShmemInfo_section, walkStep796]
theorem symbolLength796 : LabToTarget.secLength Padded796.lines 0 = 10192 := by
  kernel_rfl
#print axioms shmemStep796
#print axioms symbolLength796
end InitECandidate.Proofs.BackendStages.Metadata
