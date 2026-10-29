import InitECandidate.Proofs.BackendStages.Metadata.Data516
import InitECandidate.Proofs.BackendStages.Padded516
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem walkStep516 : walkShmemLines Padded516.lines 382172 beforeFfis516 beforeShmem516 = (382840, afterFfis516, afterShmem516) := by
  kernel_rfl
theorem shmemStep516 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded516 :: rest) 382172 beforeFfis516 beforeShmem516 = LabToTarget.getShmemInfo rest 382840 afterFfis516 afterShmem516 := by
  rw [getShmemInfo_section, walkStep516]
theorem symbolLength516 : LabToTarget.secLength Padded516.lines 0 = 668 := by
  kernel_rfl
#print axioms shmemStep516
#print axioms symbolLength516
end InitECandidate.Proofs.BackendStages.Metadata
