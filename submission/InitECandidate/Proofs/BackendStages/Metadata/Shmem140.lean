import InitECandidate.Proofs.BackendStages.Metadata.Data140
import InitECandidate.Proofs.BackendStages.Padded140
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem walkStep140 : walkShmemLines Padded140.lines 27076 beforeFfis140 beforeShmem140 = (28424, afterFfis140, afterShmem140) := by
  kernel_rfl
theorem shmemStep140 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded140 :: rest) 27076 beforeFfis140 beforeShmem140 = LabToTarget.getShmemInfo rest 28424 afterFfis140 afterShmem140 := by
  rw [getShmemInfo_section, walkStep140]
theorem symbolLength140 : LabToTarget.secLength Padded140.lines 0 = 1348 := by
  kernel_rfl
#print axioms shmemStep140
#print axioms symbolLength140
end InitECandidate.Proofs.BackendStages.Metadata
