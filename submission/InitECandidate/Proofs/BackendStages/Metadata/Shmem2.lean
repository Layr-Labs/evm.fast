import InitECandidate.Proofs.BackendStages.Metadata.Data2
import InitECandidate.Proofs.BackendStages.Padded2
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem walkStep2 : walkShmemLines Padded2.lines 764 beforeFfis2 beforeShmem2 = (772, afterFfis2, afterShmem2) := by
  kernel_rfl
theorem shmemStep2 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded2 :: rest) 764 beforeFfis2 beforeShmem2 = LabToTarget.getShmemInfo rest 772 afterFfis2 afterShmem2 := by
  rw [getShmemInfo_section, walkStep2]
theorem symbolLength2 : LabToTarget.secLength Padded2.lines 0 = 8 := by
  kernel_rfl
#print axioms shmemStep2
#print axioms symbolLength2
end InitECandidate.Proofs.BackendStages.Metadata
