import InitECandidate.Proofs.BackendStages.Metadata.Data92
import InitECandidate.Proofs.BackendStages.Padded92
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem walkStep92 : walkShmemLines Padded92.lines 9804 beforeFfis92 beforeShmem92 = (9820, afterFfis92, afterShmem92) := by
  kernel_rfl
theorem shmemStep92 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded92 :: rest) 9804 beforeFfis92 beforeShmem92 = LabToTarget.getShmemInfo rest 9820 afterFfis92 afterShmem92 := by
  rw [getShmemInfo_section, walkStep92]
theorem symbolLength92 : LabToTarget.secLength Padded92.lines 0 = 16 := by
  kernel_rfl
#print axioms shmemStep92
#print axioms symbolLength92
end InitECandidate.Proofs.BackendStages.Metadata
