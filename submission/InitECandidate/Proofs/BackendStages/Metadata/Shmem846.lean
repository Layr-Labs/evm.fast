import InitECandidate.Proofs.BackendStages.Metadata.Data846
import InitECandidate.Proofs.BackendStages.Padded846
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem walkStep846 : walkShmemLines Padded846.lines 915516 beforeFfis846 beforeShmem846 = (916292, afterFfis846, afterShmem846) := by
  kernel_rfl
theorem shmemStep846 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded846 :: rest) 915516 beforeFfis846 beforeShmem846 = LabToTarget.getShmemInfo rest 916292 afterFfis846 afterShmem846 := by
  rw [getShmemInfo_section, walkStep846]
theorem symbolLength846 : LabToTarget.secLength Padded846.lines 0 = 776 := by
  kernel_rfl
#print axioms shmemStep846
#print axioms symbolLength846
end InitECandidate.Proofs.BackendStages.Metadata
