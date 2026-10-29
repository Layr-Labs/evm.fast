import InitECandidate.Proofs.BackendStages.Metadata.Data309
import InitECandidate.Proofs.BackendStages.Padded309
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem walkStep309 : walkShmemLines Padded309.lines 242360 beforeFfis309 beforeShmem309 = (242528, afterFfis309, afterShmem309) := by
  kernel_rfl
theorem shmemStep309 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded309 :: rest) 242360 beforeFfis309 beforeShmem309 = LabToTarget.getShmemInfo rest 242528 afterFfis309 afterShmem309 := by
  rw [getShmemInfo_section, walkStep309]
theorem symbolLength309 : LabToTarget.secLength Padded309.lines 0 = 168 := by
  kernel_rfl
#print axioms shmemStep309
#print axioms symbolLength309
end InitECandidate.Proofs.BackendStages.Metadata
