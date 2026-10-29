import InitECandidate.Proofs.BackendStages.Metadata.Data453
import InitECandidate.Proofs.BackendStages.Padded453
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem walkStep453 : walkShmemLines Padded453.lines 333300 beforeFfis453 beforeShmem453 = (333936, afterFfis453, afterShmem453) := by
  kernel_rfl
theorem shmemStep453 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded453 :: rest) 333300 beforeFfis453 beforeShmem453 = LabToTarget.getShmemInfo rest 333936 afterFfis453 afterShmem453 := by
  rw [getShmemInfo_section, walkStep453]
theorem symbolLength453 : LabToTarget.secLength Padded453.lines 0 = 636 := by
  kernel_rfl
#print axioms shmemStep453
#print axioms symbolLength453
end InitECandidate.Proofs.BackendStages.Metadata
