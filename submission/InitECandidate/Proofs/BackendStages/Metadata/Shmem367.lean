import InitECandidate.Proofs.BackendStages.Metadata.Data367
import InitECandidate.Proofs.BackendStages.Padded367
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem walkStep367 : walkShmemLines Padded367.lines 283052 beforeFfis367 beforeShmem367 = (286424, afterFfis367, afterShmem367) := by
  kernel_rfl
theorem shmemStep367 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded367 :: rest) 283052 beforeFfis367 beforeShmem367 = LabToTarget.getShmemInfo rest 286424 afterFfis367 afterShmem367 := by
  rw [getShmemInfo_section, walkStep367]
theorem symbolLength367 : LabToTarget.secLength Padded367.lines 0 = 3372 := by
  kernel_rfl
#print axioms shmemStep367
#print axioms symbolLength367
end InitECandidate.Proofs.BackendStages.Metadata
