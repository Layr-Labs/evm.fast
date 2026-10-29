import InitECandidate.Proofs.BackendStages.Metadata.Data329
import InitECandidate.Proofs.BackendStages.Padded329
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem walkStep329 : walkShmemLines Padded329.lines 258856 beforeFfis329 beforeShmem329 = (259616, afterFfis329, afterShmem329) := by
  kernel_rfl
theorem shmemStep329 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded329 :: rest) 258856 beforeFfis329 beforeShmem329 = LabToTarget.getShmemInfo rest 259616 afterFfis329 afterShmem329 := by
  rw [getShmemInfo_section, walkStep329]
theorem symbolLength329 : LabToTarget.secLength Padded329.lines 0 = 760 := by
  kernel_rfl
#print axioms shmemStep329
#print axioms symbolLength329
end InitECandidate.Proofs.BackendStages.Metadata
