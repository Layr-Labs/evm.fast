import InitECandidate.Proofs.BackendStages.Metadata.Data420
import InitECandidate.Proofs.BackendStages.Padded420
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem walkStep420 : walkShmemLines Padded420.lines 313052 beforeFfis420 beforeShmem420 = (313960, afterFfis420, afterShmem420) := by
  kernel_rfl
theorem shmemStep420 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded420 :: rest) 313052 beforeFfis420 beforeShmem420 = LabToTarget.getShmemInfo rest 313960 afterFfis420 afterShmem420 := by
  rw [getShmemInfo_section, walkStep420]
theorem symbolLength420 : LabToTarget.secLength Padded420.lines 0 = 908 := by
  kernel_rfl
#print axioms shmemStep420
#print axioms symbolLength420
end InitECandidate.Proofs.BackendStages.Metadata
