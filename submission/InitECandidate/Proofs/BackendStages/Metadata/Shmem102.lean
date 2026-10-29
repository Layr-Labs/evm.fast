import InitECandidate.Proofs.BackendStages.Metadata.Data102
import InitECandidate.Proofs.BackendStages.Padded102
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem walkStep102 : walkShmemLines Padded102.lines 10704 beforeFfis102 beforeShmem102 = (10740, afterFfis102, afterShmem102) := by
  kernel_rfl
theorem shmemStep102 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded102 :: rest) 10704 beforeFfis102 beforeShmem102 = LabToTarget.getShmemInfo rest 10740 afterFfis102 afterShmem102 := by
  rw [getShmemInfo_section, walkStep102]
theorem symbolLength102 : LabToTarget.secLength Padded102.lines 0 = 36 := by
  kernel_rfl
#print axioms shmemStep102
#print axioms symbolLength102
end InitECandidate.Proofs.BackendStages.Metadata
