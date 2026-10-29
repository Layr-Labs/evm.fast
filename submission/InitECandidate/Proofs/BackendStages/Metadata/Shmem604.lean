import InitECandidate.Proofs.BackendStages.Metadata.Data604
import InitECandidate.Proofs.BackendStages.Padded604
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem walkStep604 : walkShmemLines Padded604.lines 477760 beforeFfis604 beforeShmem604 = (477832, afterFfis604, afterShmem604) := by
  kernel_rfl
theorem shmemStep604 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded604 :: rest) 477760 beforeFfis604 beforeShmem604 = LabToTarget.getShmemInfo rest 477832 afterFfis604 afterShmem604 := by
  rw [getShmemInfo_section, walkStep604]
theorem symbolLength604 : LabToTarget.secLength Padded604.lines 0 = 72 := by
  kernel_rfl
#print axioms shmemStep604
#print axioms symbolLength604
end InitECandidate.Proofs.BackendStages.Metadata
