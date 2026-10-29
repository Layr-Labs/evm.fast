import InitECandidate.Proofs.BackendStages.Metadata.Data699
import InitECandidate.Proofs.BackendStages.Padded699
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem walkStep699 : walkShmemLines Padded699.lines 657180 beforeFfis699 beforeShmem699 = (658264, afterFfis699, afterShmem699) := by
  kernel_rfl
theorem shmemStep699 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded699 :: rest) 657180 beforeFfis699 beforeShmem699 = LabToTarget.getShmemInfo rest 658264 afterFfis699 afterShmem699 := by
  rw [getShmemInfo_section, walkStep699]
theorem symbolLength699 : LabToTarget.secLength Padded699.lines 0 = 1084 := by
  kernel_rfl
#print axioms shmemStep699
#print axioms symbolLength699
end InitECandidate.Proofs.BackendStages.Metadata
