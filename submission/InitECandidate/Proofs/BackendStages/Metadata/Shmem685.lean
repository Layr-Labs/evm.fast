import InitECandidate.Proofs.BackendStages.Metadata.Data685
import InitECandidate.Proofs.BackendStages.Padded685
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem walkStep685 : walkShmemLines Padded685.lines 620044 beforeFfis685 beforeShmem685 = (626276, afterFfis685, afterShmem685) := by
  kernel_rfl
theorem shmemStep685 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded685 :: rest) 620044 beforeFfis685 beforeShmem685 = LabToTarget.getShmemInfo rest 626276 afterFfis685 afterShmem685 := by
  rw [getShmemInfo_section, walkStep685]
theorem symbolLength685 : LabToTarget.secLength Padded685.lines 0 = 6232 := by
  kernel_rfl
#print axioms shmemStep685
#print axioms symbolLength685
end InitECandidate.Proofs.BackendStages.Metadata
