import InitECandidate.Proofs.BackendStages.Metadata.Data495
import InitECandidate.Proofs.BackendStages.Padded495
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem walkStep495 : walkShmemLines Padded495.lines 367096 beforeFfis495 beforeShmem495 = (367264, afterFfis495, afterShmem495) := by
  kernel_rfl
theorem shmemStep495 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded495 :: rest) 367096 beforeFfis495 beforeShmem495 = LabToTarget.getShmemInfo rest 367264 afterFfis495 afterShmem495 := by
  rw [getShmemInfo_section, walkStep495]
theorem symbolLength495 : LabToTarget.secLength Padded495.lines 0 = 168 := by
  kernel_rfl
#print axioms shmemStep495
#print axioms symbolLength495
end InitECandidate.Proofs.BackendStages.Metadata
