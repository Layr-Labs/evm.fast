import InitECandidate.Proofs.BackendStages.Metadata.Data94
import InitECandidate.Proofs.BackendStages.Padded94
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem walkStep94 : walkShmemLines Padded94.lines 9836 beforeFfis94 beforeShmem94 = (10128, afterFfis94, afterShmem94) := by
  kernel_rfl
theorem shmemStep94 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded94 :: rest) 9836 beforeFfis94 beforeShmem94 = LabToTarget.getShmemInfo rest 10128 afterFfis94 afterShmem94 := by
  rw [getShmemInfo_section, walkStep94]
theorem symbolLength94 : LabToTarget.secLength Padded94.lines 0 = 292 := by
  kernel_rfl
#print axioms shmemStep94
#print axioms symbolLength94
end InitECandidate.Proofs.BackendStages.Metadata
