import InitECandidate.Proofs.BackendStages.Metadata.Data381
import InitECandidate.Proofs.BackendStages.Padded381
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem walkStep381 : walkShmemLines Padded381.lines 292624 beforeFfis381 beforeShmem381 = (293376, afterFfis381, afterShmem381) := by
  kernel_rfl
theorem shmemStep381 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded381 :: rest) 292624 beforeFfis381 beforeShmem381 = LabToTarget.getShmemInfo rest 293376 afterFfis381 afterShmem381 := by
  rw [getShmemInfo_section, walkStep381]
theorem symbolLength381 : LabToTarget.secLength Padded381.lines 0 = 752 := by
  kernel_rfl
#print axioms shmemStep381
#print axioms symbolLength381
end InitECandidate.Proofs.BackendStages.Metadata
