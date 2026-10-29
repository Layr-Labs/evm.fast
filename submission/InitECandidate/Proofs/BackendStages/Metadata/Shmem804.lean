import InitECandidate.Proofs.BackendStages.Metadata.Data804
import InitECandidate.Proofs.BackendStages.Padded804
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem walkStep804 : walkShmemLines Padded804.lines 861184 beforeFfis804 beforeShmem804 = (861960, afterFfis804, afterShmem804) := by
  kernel_rfl
theorem shmemStep804 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded804 :: rest) 861184 beforeFfis804 beforeShmem804 = LabToTarget.getShmemInfo rest 861960 afterFfis804 afterShmem804 := by
  rw [getShmemInfo_section, walkStep804]
theorem symbolLength804 : LabToTarget.secLength Padded804.lines 0 = 776 := by
  kernel_rfl
#print axioms shmemStep804
#print axioms symbolLength804
end InitECandidate.Proofs.BackendStages.Metadata
