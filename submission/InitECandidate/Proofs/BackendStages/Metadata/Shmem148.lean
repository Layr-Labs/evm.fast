import InitECandidate.Proofs.BackendStages.Metadata.Data148
import InitECandidate.Proofs.BackendStages.Padded148
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem walkStep148 : walkShmemLines Padded148.lines 32292 beforeFfis148 beforeShmem148 = (32796, afterFfis148, afterShmem148) := by
  kernel_rfl
theorem shmemStep148 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded148 :: rest) 32292 beforeFfis148 beforeShmem148 = LabToTarget.getShmemInfo rest 32796 afterFfis148 afterShmem148 := by
  rw [getShmemInfo_section, walkStep148]
theorem symbolLength148 : LabToTarget.secLength Padded148.lines 0 = 504 := by
  kernel_rfl
#print axioms shmemStep148
#print axioms symbolLength148
end InitECandidate.Proofs.BackendStages.Metadata
