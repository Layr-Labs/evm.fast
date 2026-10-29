import InitECandidate.Proofs.BackendStages.Metadata.Data856
import InitECandidate.Proofs.BackendStages.Padded856
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem walkStep856 : walkShmemLines Padded856.lines 939608 beforeFfis856 beforeShmem856 = (939636, afterFfis856, afterShmem856) := by
  kernel_rfl
theorem shmemStep856 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded856 :: rest) 939608 beforeFfis856 beforeShmem856 = LabToTarget.getShmemInfo rest 939636 afterFfis856 afterShmem856 := by
  rw [getShmemInfo_section, walkStep856]
theorem symbolLength856 : LabToTarget.secLength Padded856.lines 0 = 28 := by
  kernel_rfl
#print axioms shmemStep856
#print axioms symbolLength856
end InitECandidate.Proofs.BackendStages.Metadata
