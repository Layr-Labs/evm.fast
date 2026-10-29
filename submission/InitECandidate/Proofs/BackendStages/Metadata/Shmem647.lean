import InitECandidate.Proofs.BackendStages.Metadata.Data647
import InitECandidate.Proofs.BackendStages.Padded647
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem walkStep647 : walkShmemLines Padded647.lines 554332 beforeFfis647 beforeShmem647 = (554392, afterFfis647, afterShmem647) := by
  kernel_rfl
theorem shmemStep647 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded647 :: rest) 554332 beforeFfis647 beforeShmem647 = LabToTarget.getShmemInfo rest 554392 afterFfis647 afterShmem647 := by
  rw [getShmemInfo_section, walkStep647]
theorem symbolLength647 : LabToTarget.secLength Padded647.lines 0 = 60 := by
  kernel_rfl
#print axioms shmemStep647
#print axioms symbolLength647
end InitECandidate.Proofs.BackendStages.Metadata
