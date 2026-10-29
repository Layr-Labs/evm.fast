import InitECandidate.Proofs.BackendStages.Metadata.Data502
import InitECandidate.Proofs.BackendStages.Padded502
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem walkStep502 : walkShmemLines Padded502.lines 371240 beforeFfis502 beforeShmem502 = (372004, afterFfis502, afterShmem502) := by
  kernel_rfl
theorem shmemStep502 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded502 :: rest) 371240 beforeFfis502 beforeShmem502 = LabToTarget.getShmemInfo rest 372004 afterFfis502 afterShmem502 := by
  rw [getShmemInfo_section, walkStep502]
theorem symbolLength502 : LabToTarget.secLength Padded502.lines 0 = 764 := by
  kernel_rfl
#print axioms shmemStep502
#print axioms symbolLength502
end InitECandidate.Proofs.BackendStages.Metadata
