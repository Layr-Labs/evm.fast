import InitECandidate.Proofs.BackendStages.Metadata.Data649
import InitECandidate.Proofs.BackendStages.Padded649
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem walkStep649 : walkShmemLines Padded649.lines 554504 beforeFfis649 beforeShmem649 = (554584, afterFfis649, afterShmem649) := by
  kernel_rfl
theorem shmemStep649 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded649 :: rest) 554504 beforeFfis649 beforeShmem649 = LabToTarget.getShmemInfo rest 554584 afterFfis649 afterShmem649 := by
  rw [getShmemInfo_section, walkStep649]
theorem symbolLength649 : LabToTarget.secLength Padded649.lines 0 = 80 := by
  kernel_rfl
#print axioms shmemStep649
#print axioms symbolLength649
end InitECandidate.Proofs.BackendStages.Metadata
