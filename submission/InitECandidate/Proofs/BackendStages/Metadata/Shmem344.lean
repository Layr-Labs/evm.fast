import InitECandidate.Proofs.BackendStages.Metadata.Data344
import InitECandidate.Proofs.BackendStages.Padded344
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem walkStep344 : walkShmemLines Padded344.lines 270020 beforeFfis344 beforeShmem344 = (271732, afterFfis344, afterShmem344) := by
  kernel_rfl
theorem shmemStep344 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded344 :: rest) 270020 beforeFfis344 beforeShmem344 = LabToTarget.getShmemInfo rest 271732 afterFfis344 afterShmem344 := by
  rw [getShmemInfo_section, walkStep344]
theorem symbolLength344 : LabToTarget.secLength Padded344.lines 0 = 1712 := by
  kernel_rfl
#print axioms shmemStep344
#print axioms symbolLength344
end InitECandidate.Proofs.BackendStages.Metadata
