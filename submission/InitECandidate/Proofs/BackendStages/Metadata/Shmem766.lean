import InitECandidate.Proofs.BackendStages.Metadata.Data766
import InitECandidate.Proofs.BackendStages.Padded766
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem walkStep766 : walkShmemLines Padded766.lines 766976 beforeFfis766 beforeShmem766 = (767376, afterFfis766, afterShmem766) := by
  kernel_rfl
theorem shmemStep766 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded766 :: rest) 766976 beforeFfis766 beforeShmem766 = LabToTarget.getShmemInfo rest 767376 afterFfis766 afterShmem766 := by
  rw [getShmemInfo_section, walkStep766]
theorem symbolLength766 : LabToTarget.secLength Padded766.lines 0 = 400 := by
  kernel_rfl
#print axioms shmemStep766
#print axioms symbolLength766
end InitECandidate.Proofs.BackendStages.Metadata
