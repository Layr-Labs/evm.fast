import InitECandidate.Proofs.BackendStages.Metadata.Data127
import InitECandidate.Proofs.BackendStages.Padded127
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem walkStep127 : walkShmemLines Padded127.lines 18656 beforeFfis127 beforeShmem127 = (21264, afterFfis127, afterShmem127) := by
  kernel_rfl
theorem shmemStep127 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded127 :: rest) 18656 beforeFfis127 beforeShmem127 = LabToTarget.getShmemInfo rest 21264 afterFfis127 afterShmem127 := by
  rw [getShmemInfo_section, walkStep127]
theorem symbolLength127 : LabToTarget.secLength Padded127.lines 0 = 2608 := by
  kernel_rfl
#print axioms shmemStep127
#print axioms symbolLength127
end InitECandidate.Proofs.BackendStages.Metadata
