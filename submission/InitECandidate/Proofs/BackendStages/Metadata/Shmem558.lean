import InitECandidate.Proofs.BackendStages.Metadata.Data558
import InitECandidate.Proofs.BackendStages.Padded558
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem walkStep558 : walkShmemLines Padded558.lines 416200 beforeFfis558 beforeShmem558 = (417484, afterFfis558, afterShmem558) := by
  kernel_rfl
theorem shmemStep558 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded558 :: rest) 416200 beforeFfis558 beforeShmem558 = LabToTarget.getShmemInfo rest 417484 afterFfis558 afterShmem558 := by
  rw [getShmemInfo_section, walkStep558]
theorem symbolLength558 : LabToTarget.secLength Padded558.lines 0 = 1284 := by
  kernel_rfl
#print axioms shmemStep558
#print axioms symbolLength558
end InitECandidate.Proofs.BackendStages.Metadata
