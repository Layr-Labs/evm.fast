import InitECandidate.Proofs.BackendStages.Metadata.Data622
import InitECandidate.Proofs.BackendStages.Padded622
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem walkStep622 : walkShmemLines Padded622.lines 504480 beforeFfis622 beforeShmem622 = (511292, afterFfis622, afterShmem622) := by
  kernel_rfl
theorem shmemStep622 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded622 :: rest) 504480 beforeFfis622 beforeShmem622 = LabToTarget.getShmemInfo rest 511292 afterFfis622 afterShmem622 := by
  rw [getShmemInfo_section, walkStep622]
theorem symbolLength622 : LabToTarget.secLength Padded622.lines 0 = 6812 := by
  kernel_rfl
#print axioms shmemStep622
#print axioms symbolLength622
end InitECandidate.Proofs.BackendStages.Metadata
