import InitECandidate.Proofs.BackendStages.Metadata.Data637
import InitECandidate.Proofs.BackendStages.Padded637
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem walkStep637 : walkShmemLines Padded637.lines 531964 beforeFfis637 beforeShmem637 = (532184, afterFfis637, afterShmem637) := by
  kernel_rfl
theorem shmemStep637 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded637 :: rest) 531964 beforeFfis637 beforeShmem637 = LabToTarget.getShmemInfo rest 532184 afterFfis637 afterShmem637 := by
  rw [getShmemInfo_section, walkStep637]
theorem symbolLength637 : LabToTarget.secLength Padded637.lines 0 = 220 := by
  kernel_rfl
#print axioms shmemStep637
#print axioms symbolLength637
end InitECandidate.Proofs.BackendStages.Metadata
