import InitECandidate.Proofs.BackendStages.Metadata.Data320
import InitECandidate.Proofs.BackendStages.Padded320
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem walkStep320 : walkShmemLines Padded320.lines 252648 beforeFfis320 beforeShmem320 = (253156, afterFfis320, afterShmem320) := by
  kernel_rfl
theorem shmemStep320 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded320 :: rest) 252648 beforeFfis320 beforeShmem320 = LabToTarget.getShmemInfo rest 253156 afterFfis320 afterShmem320 := by
  rw [getShmemInfo_section, walkStep320]
theorem symbolLength320 : LabToTarget.secLength Padded320.lines 0 = 508 := by
  kernel_rfl
#print axioms shmemStep320
#print axioms symbolLength320
end InitECandidate.Proofs.BackendStages.Metadata
