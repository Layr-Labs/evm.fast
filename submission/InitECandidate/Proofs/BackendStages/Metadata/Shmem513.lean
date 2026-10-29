import InitECandidate.Proofs.BackendStages.Metadata.Data513
import InitECandidate.Proofs.BackendStages.Padded513
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem walkStep513 : walkShmemLines Padded513.lines 380224 beforeFfis513 beforeShmem513 = (380836, afterFfis513, afterShmem513) := by
  kernel_rfl
theorem shmemStep513 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded513 :: rest) 380224 beforeFfis513 beforeShmem513 = LabToTarget.getShmemInfo rest 380836 afterFfis513 afterShmem513 := by
  rw [getShmemInfo_section, walkStep513]
theorem symbolLength513 : LabToTarget.secLength Padded513.lines 0 = 612 := by
  kernel_rfl
#print axioms shmemStep513
#print axioms symbolLength513
end InitECandidate.Proofs.BackendStages.Metadata
