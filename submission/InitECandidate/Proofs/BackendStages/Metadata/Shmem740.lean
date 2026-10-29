import InitECandidate.Proofs.BackendStages.Metadata.Data740
import InitECandidate.Proofs.BackendStages.Padded740
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem walkStep740 : walkShmemLines Padded740.lines 739424 beforeFfis740 beforeShmem740 = (740876, afterFfis740, afterShmem740) := by
  kernel_rfl
theorem shmemStep740 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded740 :: rest) 739424 beforeFfis740 beforeShmem740 = LabToTarget.getShmemInfo rest 740876 afterFfis740 afterShmem740 := by
  rw [getShmemInfo_section, walkStep740]
theorem symbolLength740 : LabToTarget.secLength Padded740.lines 0 = 1452 := by
  kernel_rfl
#print axioms shmemStep740
#print axioms symbolLength740
end InitECandidate.Proofs.BackendStages.Metadata
