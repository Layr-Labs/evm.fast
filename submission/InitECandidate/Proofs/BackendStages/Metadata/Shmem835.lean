import InitECandidate.Proofs.BackendStages.Metadata.Data835
import InitECandidate.Proofs.BackendStages.Padded835
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem walkStep835 : walkShmemLines Padded835.lines 902292 beforeFfis835 beforeShmem835 = (902768, afterFfis835, afterShmem835) := by
  kernel_rfl
theorem shmemStep835 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded835 :: rest) 902292 beforeFfis835 beforeShmem835 = LabToTarget.getShmemInfo rest 902768 afterFfis835 afterShmem835 := by
  rw [getShmemInfo_section, walkStep835]
theorem symbolLength835 : LabToTarget.secLength Padded835.lines 0 = 476 := by
  kernel_rfl
#print axioms shmemStep835
#print axioms symbolLength835
end InitECandidate.Proofs.BackendStages.Metadata
