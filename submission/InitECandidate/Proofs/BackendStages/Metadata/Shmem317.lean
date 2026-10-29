import InitECandidate.Proofs.BackendStages.Metadata.Data317
import InitECandidate.Proofs.BackendStages.Padded317
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem walkStep317 : walkShmemLines Padded317.lines 249460 beforeFfis317 beforeShmem317 = (249928, afterFfis317, afterShmem317) := by
  kernel_rfl
theorem shmemStep317 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded317 :: rest) 249460 beforeFfis317 beforeShmem317 = LabToTarget.getShmemInfo rest 249928 afterFfis317 afterShmem317 := by
  rw [getShmemInfo_section, walkStep317]
theorem symbolLength317 : LabToTarget.secLength Padded317.lines 0 = 468 := by
  kernel_rfl
#print axioms shmemStep317
#print axioms symbolLength317
end InitECandidate.Proofs.BackendStages.Metadata
