import InitECandidate.Proofs.BackendStages.Metadata.Data643
import InitECandidate.Proofs.BackendStages.Padded643
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem walkStep643 : walkShmemLines Padded643.lines 541028 beforeFfis643 beforeShmem643 = (541580, afterFfis643, afterShmem643) := by
  kernel_rfl
theorem shmemStep643 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded643 :: rest) 541028 beforeFfis643 beforeShmem643 = LabToTarget.getShmemInfo rest 541580 afterFfis643 afterShmem643 := by
  rw [getShmemInfo_section, walkStep643]
theorem symbolLength643 : LabToTarget.secLength Padded643.lines 0 = 552 := by
  kernel_rfl
#print axioms shmemStep643
#print axioms symbolLength643
end InitECandidate.Proofs.BackendStages.Metadata
