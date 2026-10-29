import InitECandidate.Proofs.BackendStages.Metadata.Data243
import InitECandidate.Proofs.BackendStages.Padded243
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem walkStep243 : walkShmemLines Padded243.lines 178192 beforeFfis243 beforeShmem243 = (178840, afterFfis243, afterShmem243) := by
  kernel_rfl
theorem shmemStep243 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded243 :: rest) 178192 beforeFfis243 beforeShmem243 = LabToTarget.getShmemInfo rest 178840 afterFfis243 afterShmem243 := by
  rw [getShmemInfo_section, walkStep243]
theorem symbolLength243 : LabToTarget.secLength Padded243.lines 0 = 648 := by
  kernel_rfl
#print axioms shmemStep243
#print axioms symbolLength243
end InitECandidate.Proofs.BackendStages.Metadata
