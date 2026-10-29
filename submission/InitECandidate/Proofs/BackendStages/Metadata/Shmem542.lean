import InitECandidate.Proofs.BackendStages.Metadata.Data542
import InitECandidate.Proofs.BackendStages.Padded542
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem walkStep542 : walkShmemLines Padded542.lines 400320 beforeFfis542 beforeShmem542 = (400956, afterFfis542, afterShmem542) := by
  kernel_rfl
theorem shmemStep542 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded542 :: rest) 400320 beforeFfis542 beforeShmem542 = LabToTarget.getShmemInfo rest 400956 afterFfis542 afterShmem542 := by
  rw [getShmemInfo_section, walkStep542]
theorem symbolLength542 : LabToTarget.secLength Padded542.lines 0 = 636 := by
  kernel_rfl
#print axioms shmemStep542
#print axioms symbolLength542
end InitECandidate.Proofs.BackendStages.Metadata
