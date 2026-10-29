import InitECandidate.Proofs.BackendStages.Metadata.Data606
import InitECandidate.Proofs.BackendStages.Padded606
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem walkStep606 : walkShmemLines Padded606.lines 478316 beforeFfis606 beforeShmem606 = (480112, afterFfis606, afterShmem606) := by
  kernel_rfl
theorem shmemStep606 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded606 :: rest) 478316 beforeFfis606 beforeShmem606 = LabToTarget.getShmemInfo rest 480112 afterFfis606 afterShmem606 := by
  rw [getShmemInfo_section, walkStep606]
theorem symbolLength606 : LabToTarget.secLength Padded606.lines 0 = 1796 := by
  kernel_rfl
#print axioms shmemStep606
#print axioms symbolLength606
end InitECandidate.Proofs.BackendStages.Metadata
