import InitECandidate.Proofs.BackendStages.Metadata.Data256
import InitECandidate.Proofs.BackendStages.Padded256
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem walkStep256 : walkShmemLines Padded256.lines 189488 beforeFfis256 beforeShmem256 = (192852, afterFfis256, afterShmem256) := by
  kernel_rfl
theorem shmemStep256 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded256 :: rest) 189488 beforeFfis256 beforeShmem256 = LabToTarget.getShmemInfo rest 192852 afterFfis256 afterShmem256 := by
  rw [getShmemInfo_section, walkStep256]
theorem symbolLength256 : LabToTarget.secLength Padded256.lines 0 = 3364 := by
  kernel_rfl
#print axioms shmemStep256
#print axioms symbolLength256
end InitECandidate.Proofs.BackendStages.Metadata
