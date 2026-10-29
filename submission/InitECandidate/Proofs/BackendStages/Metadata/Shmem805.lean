import InitECandidate.Proofs.BackendStages.Metadata.Data805
import InitECandidate.Proofs.BackendStages.Padded805
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem walkStep805 : walkShmemLines Padded805.lines 861960 beforeFfis805 beforeShmem805 = (865484, afterFfis805, afterShmem805) := by
  kernel_rfl
theorem shmemStep805 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded805 :: rest) 861960 beforeFfis805 beforeShmem805 = LabToTarget.getShmemInfo rest 865484 afterFfis805 afterShmem805 := by
  rw [getShmemInfo_section, walkStep805]
theorem symbolLength805 : LabToTarget.secLength Padded805.lines 0 = 3524 := by
  kernel_rfl
#print axioms shmemStep805
#print axioms symbolLength805
end InitECandidate.Proofs.BackendStages.Metadata
