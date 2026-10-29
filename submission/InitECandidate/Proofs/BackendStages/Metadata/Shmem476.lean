import InitECandidate.Proofs.BackendStages.Metadata.Data476
import InitECandidate.Proofs.BackendStages.Padded476
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem walkStep476 : walkShmemLines Padded476.lines 358892 beforeFfis476 beforeShmem476 = (359464, afterFfis476, afterShmem476) := by
  kernel_rfl
theorem shmemStep476 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded476 :: rest) 358892 beforeFfis476 beforeShmem476 = LabToTarget.getShmemInfo rest 359464 afterFfis476 afterShmem476 := by
  rw [getShmemInfo_section, walkStep476]
theorem symbolLength476 : LabToTarget.secLength Padded476.lines 0 = 572 := by
  kernel_rfl
#print axioms shmemStep476
#print axioms symbolLength476
end InitECandidate.Proofs.BackendStages.Metadata
