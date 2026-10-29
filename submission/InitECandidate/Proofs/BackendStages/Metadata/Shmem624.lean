import InitECandidate.Proofs.BackendStages.Metadata.Data624
import InitECandidate.Proofs.BackendStages.Padded624
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem walkStep624 : walkShmemLines Padded624.lines 516472 beforeFfis624 beforeShmem624 = (521612, afterFfis624, afterShmem624) := by
  kernel_rfl
theorem shmemStep624 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded624 :: rest) 516472 beforeFfis624 beforeShmem624 = LabToTarget.getShmemInfo rest 521612 afterFfis624 afterShmem624 := by
  rw [getShmemInfo_section, walkStep624]
theorem symbolLength624 : LabToTarget.secLength Padded624.lines 0 = 5140 := by
  kernel_rfl
#print axioms shmemStep624
#print axioms symbolLength624
end InitECandidate.Proofs.BackendStages.Metadata
