import InitECandidate.Proofs.BackendStages.Metadata.Data123
import InitECandidate.Proofs.BackendStages.Padded123
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem walkStep123 : walkShmemLines Padded123.lines 18228 beforeFfis123 beforeShmem123 = (18324, afterFfis123, afterShmem123) := by
  kernel_rfl
theorem shmemStep123 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded123 :: rest) 18228 beforeFfis123 beforeShmem123 = LabToTarget.getShmemInfo rest 18324 afterFfis123 afterShmem123 := by
  rw [getShmemInfo_section, walkStep123]
theorem symbolLength123 : LabToTarget.secLength Padded123.lines 0 = 96 := by
  kernel_rfl
#print axioms shmemStep123
#print axioms symbolLength123
end InitECandidate.Proofs.BackendStages.Metadata
