import InitECandidate.Proofs.BackendStages.Metadata.Data289
import InitECandidate.Proofs.BackendStages.Padded289
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem walkStep289 : walkShmemLines Padded289.lines 230384 beforeFfis289 beforeShmem289 = (230964, afterFfis289, afterShmem289) := by
  kernel_rfl
theorem shmemStep289 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded289 :: rest) 230384 beforeFfis289 beforeShmem289 = LabToTarget.getShmemInfo rest 230964 afterFfis289 afterShmem289 := by
  rw [getShmemInfo_section, walkStep289]
theorem symbolLength289 : LabToTarget.secLength Padded289.lines 0 = 580 := by
  kernel_rfl
#print axioms shmemStep289
#print axioms symbolLength289
end InitECandidate.Proofs.BackendStages.Metadata
