import InitECandidate.Proofs.BackendStages.Metadata.Data559
import InitECandidate.Proofs.BackendStages.Padded559
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem walkStep559 : walkShmemLines Padded559.lines 417484 beforeFfis559 beforeShmem559 = (417856, afterFfis559, afterShmem559) := by
  kernel_rfl
theorem shmemStep559 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded559 :: rest) 417484 beforeFfis559 beforeShmem559 = LabToTarget.getShmemInfo rest 417856 afterFfis559 afterShmem559 := by
  rw [getShmemInfo_section, walkStep559]
theorem symbolLength559 : LabToTarget.secLength Padded559.lines 0 = 372 := by
  kernel_rfl
#print axioms shmemStep559
#print axioms symbolLength559
end InitECandidate.Proofs.BackendStages.Metadata
