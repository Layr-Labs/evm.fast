import InitECandidate.Proofs.BackendStages.Metadata.Data419
import InitECandidate.Proofs.BackendStages.Padded419
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem walkStep419 : walkShmemLines Padded419.lines 312884 beforeFfis419 beforeShmem419 = (313052, afterFfis419, afterShmem419) := by
  kernel_rfl
theorem shmemStep419 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded419 :: rest) 312884 beforeFfis419 beforeShmem419 = LabToTarget.getShmemInfo rest 313052 afterFfis419 afterShmem419 := by
  rw [getShmemInfo_section, walkStep419]
theorem symbolLength419 : LabToTarget.secLength Padded419.lines 0 = 168 := by
  kernel_rfl
#print axioms shmemStep419
#print axioms symbolLength419
end InitECandidate.Proofs.BackendStages.Metadata
