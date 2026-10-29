import InitECandidate.Proofs.BackendStages.Metadata.Data582
import InitECandidate.Proofs.BackendStages.Padded582
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem walkStep582 : walkShmemLines Padded582.lines 434864 beforeFfis582 beforeShmem582 = (435432, afterFfis582, afterShmem582) := by
  kernel_rfl
theorem shmemStep582 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded582 :: rest) 434864 beforeFfis582 beforeShmem582 = LabToTarget.getShmemInfo rest 435432 afterFfis582 afterShmem582 := by
  rw [getShmemInfo_section, walkStep582]
theorem symbolLength582 : LabToTarget.secLength Padded582.lines 0 = 568 := by
  kernel_rfl
#print axioms shmemStep582
#print axioms symbolLength582
end InitECandidate.Proofs.BackendStages.Metadata
