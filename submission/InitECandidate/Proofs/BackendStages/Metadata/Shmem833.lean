import InitECandidate.Proofs.BackendStages.Metadata.Data833
import InitECandidate.Proofs.BackendStages.Padded833
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem walkStep833 : walkShmemLines Padded833.lines 899472 beforeFfis833 beforeShmem833 = (900188, afterFfis833, afterShmem833) := by
  kernel_rfl
theorem shmemStep833 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded833 :: rest) 899472 beforeFfis833 beforeShmem833 = LabToTarget.getShmemInfo rest 900188 afterFfis833 afterShmem833 := by
  rw [getShmemInfo_section, walkStep833]
theorem symbolLength833 : LabToTarget.secLength Padded833.lines 0 = 716 := by
  kernel_rfl
#print axioms shmemStep833
#print axioms symbolLength833
end InitECandidate.Proofs.BackendStages.Metadata
