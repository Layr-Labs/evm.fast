import InitECandidate.Proofs.BackendStages.Metadata.Data700
import InitECandidate.Proofs.BackendStages.Padded700
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem walkStep700 : walkShmemLines Padded700.lines 658264 beforeFfis700 beforeShmem700 = (664084, afterFfis700, afterShmem700) := by
  kernel_rfl
theorem shmemStep700 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded700 :: rest) 658264 beforeFfis700 beforeShmem700 = LabToTarget.getShmemInfo rest 664084 afterFfis700 afterShmem700 := by
  rw [getShmemInfo_section, walkStep700]
theorem symbolLength700 : LabToTarget.secLength Padded700.lines 0 = 5820 := by
  kernel_rfl
#print axioms shmemStep700
#print axioms symbolLength700
end InitECandidate.Proofs.BackendStages.Metadata
