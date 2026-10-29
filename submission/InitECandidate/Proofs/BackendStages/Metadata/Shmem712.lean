import InitECandidate.Proofs.BackendStages.Metadata.Data712
import InitECandidate.Proofs.BackendStages.Padded712
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem walkStep712 : walkShmemLines Padded712.lines 704052 beforeFfis712 beforeShmem712 = (704576, afterFfis712, afterShmem712) := by
  kernel_rfl
theorem shmemStep712 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded712 :: rest) 704052 beforeFfis712 beforeShmem712 = LabToTarget.getShmemInfo rest 704576 afterFfis712 afterShmem712 := by
  rw [getShmemInfo_section, walkStep712]
theorem symbolLength712 : LabToTarget.secLength Padded712.lines 0 = 524 := by
  kernel_rfl
#print axioms shmemStep712
#print axioms symbolLength712
end InitECandidate.Proofs.BackendStages.Metadata
