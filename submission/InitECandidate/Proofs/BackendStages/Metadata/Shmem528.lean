import InitECandidate.Proofs.BackendStages.Metadata.Data528
import InitECandidate.Proofs.BackendStages.Padded528
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem walkStep528 : walkShmemLines Padded528.lines 391728 beforeFfis528 beforeShmem528 = (392096, afterFfis528, afterShmem528) := by
  kernel_rfl
theorem shmemStep528 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded528 :: rest) 391728 beforeFfis528 beforeShmem528 = LabToTarget.getShmemInfo rest 392096 afterFfis528 afterShmem528 := by
  rw [getShmemInfo_section, walkStep528]
theorem symbolLength528 : LabToTarget.secLength Padded528.lines 0 = 368 := by
  kernel_rfl
#print axioms shmemStep528
#print axioms symbolLength528
end InitECandidate.Proofs.BackendStages.Metadata
