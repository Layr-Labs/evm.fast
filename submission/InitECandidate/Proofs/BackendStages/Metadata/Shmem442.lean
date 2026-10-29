import InitECandidate.Proofs.BackendStages.Metadata.Data442
import InitECandidate.Proofs.BackendStages.Padded442
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem walkStep442 : walkShmemLines Padded442.lines 326856 beforeFfis442 beforeShmem442 = (327120, afterFfis442, afterShmem442) := by
  kernel_rfl
theorem shmemStep442 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded442 :: rest) 326856 beforeFfis442 beforeShmem442 = LabToTarget.getShmemInfo rest 327120 afterFfis442 afterShmem442 := by
  rw [getShmemInfo_section, walkStep442]
theorem symbolLength442 : LabToTarget.secLength Padded442.lines 0 = 264 := by
  kernel_rfl
#print axioms shmemStep442
#print axioms symbolLength442
end InitECandidate.Proofs.BackendStages.Metadata
