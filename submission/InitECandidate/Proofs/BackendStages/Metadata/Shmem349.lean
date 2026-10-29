import InitECandidate.Proofs.BackendStages.Metadata.Data349
import InitECandidate.Proofs.BackendStages.Padded349
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem walkStep349 : walkShmemLines Padded349.lines 276448 beforeFfis349 beforeShmem349 = (276456, afterFfis349, afterShmem349) := by
  kernel_rfl
theorem shmemStep349 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded349 :: rest) 276448 beforeFfis349 beforeShmem349 = LabToTarget.getShmemInfo rest 276456 afterFfis349 afterShmem349 := by
  rw [getShmemInfo_section, walkStep349]
theorem symbolLength349 : LabToTarget.secLength Padded349.lines 0 = 8 := by
  kernel_rfl
#print axioms shmemStep349
#print axioms symbolLength349
end InitECandidate.Proofs.BackendStages.Metadata
