import InitECandidate.Proofs.BackendStages.Metadata.Data654
import InitECandidate.Proofs.BackendStages.Padded654
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem walkStep654 : walkShmemLines Padded654.lines 570936 beforeFfis654 beforeShmem654 = (572364, afterFfis654, afterShmem654) := by
  kernel_rfl
theorem shmemStep654 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded654 :: rest) 570936 beforeFfis654 beforeShmem654 = LabToTarget.getShmemInfo rest 572364 afterFfis654 afterShmem654 := by
  rw [getShmemInfo_section, walkStep654]
theorem symbolLength654 : LabToTarget.secLength Padded654.lines 0 = 1428 := by
  kernel_rfl
#print axioms shmemStep654
#print axioms symbolLength654
end InitECandidate.Proofs.BackendStages.Metadata
