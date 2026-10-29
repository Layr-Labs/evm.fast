import InitECandidate.Proofs.BackendStages.Metadata.Data231
import InitECandidate.Proofs.BackendStages.Padded231
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem walkStep231 : walkShmemLines Padded231.lines 154888 beforeFfis231 beforeShmem231 = (159852, afterFfis231, afterShmem231) := by
  kernel_rfl
theorem shmemStep231 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded231 :: rest) 154888 beforeFfis231 beforeShmem231 = LabToTarget.getShmemInfo rest 159852 afterFfis231 afterShmem231 := by
  rw [getShmemInfo_section, walkStep231]
theorem symbolLength231 : LabToTarget.secLength Padded231.lines 0 = 4964 := by
  kernel_rfl
#print axioms shmemStep231
#print axioms symbolLength231
end InitECandidate.Proofs.BackendStages.Metadata
