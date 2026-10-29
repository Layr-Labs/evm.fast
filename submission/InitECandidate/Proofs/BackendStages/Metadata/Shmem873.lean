import InitECandidate.Proofs.BackendStages.Metadata.Data873
import InitECandidate.Proofs.BackendStages.Padded873
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem walkStep873 : walkShmemLines Padded873.lines 978072 beforeFfis873 beforeShmem873 = (978288, afterFfis873, afterShmem873) := by
  kernel_rfl
theorem shmemStep873 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded873 :: rest) 978072 beforeFfis873 beforeShmem873 = LabToTarget.getShmemInfo rest 978288 afterFfis873 afterShmem873 := by
  rw [getShmemInfo_section, walkStep873]
theorem symbolLength873 : LabToTarget.secLength Padded873.lines 0 = 216 := by
  kernel_rfl
#print axioms shmemStep873
#print axioms symbolLength873
end InitECandidate.Proofs.BackendStages.Metadata
