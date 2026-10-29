import InitECandidate.Proofs.BackendStages.Metadata.Data838
import InitECandidate.Proofs.BackendStages.Padded838
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem walkStep838 : walkShmemLines Padded838.lines 908820 beforeFfis838 beforeShmem838 = (909484, afterFfis838, afterShmem838) := by
  kernel_rfl
theorem shmemStep838 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded838 :: rest) 908820 beforeFfis838 beforeShmem838 = LabToTarget.getShmemInfo rest 909484 afterFfis838 afterShmem838 := by
  rw [getShmemInfo_section, walkStep838]
theorem symbolLength838 : LabToTarget.secLength Padded838.lines 0 = 664 := by
  kernel_rfl
#print axioms shmemStep838
#print axioms symbolLength838
end InitECandidate.Proofs.BackendStages.Metadata
