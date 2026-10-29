import InitECandidate.Proofs.BackendStages.Metadata.Data837
import InitECandidate.Proofs.BackendStages.Padded837
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem walkStep837 : walkShmemLines Padded837.lines 906272 beforeFfis837 beforeShmem837 = (908820, afterFfis837, afterShmem837) := by
  kernel_rfl
theorem shmemStep837 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded837 :: rest) 906272 beforeFfis837 beforeShmem837 = LabToTarget.getShmemInfo rest 908820 afterFfis837 afterShmem837 := by
  rw [getShmemInfo_section, walkStep837]
theorem symbolLength837 : LabToTarget.secLength Padded837.lines 0 = 2548 := by
  kernel_rfl
#print axioms shmemStep837
#print axioms symbolLength837
end InitECandidate.Proofs.BackendStages.Metadata
