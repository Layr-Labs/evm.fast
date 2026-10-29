import InitECandidate.Proofs.BackendStages.Metadata.Data361
import InitECandidate.Proofs.BackendStages.Padded361
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem walkStep361 : walkShmemLines Padded361.lines 277996 beforeFfis361 beforeShmem361 = (279564, afterFfis361, afterShmem361) := by
  kernel_rfl
theorem shmemStep361 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded361 :: rest) 277996 beforeFfis361 beforeShmem361 = LabToTarget.getShmemInfo rest 279564 afterFfis361 afterShmem361 := by
  rw [getShmemInfo_section, walkStep361]
theorem symbolLength361 : LabToTarget.secLength Padded361.lines 0 = 1568 := by
  kernel_rfl
#print axioms shmemStep361
#print axioms symbolLength361
end InitECandidate.Proofs.BackendStages.Metadata
