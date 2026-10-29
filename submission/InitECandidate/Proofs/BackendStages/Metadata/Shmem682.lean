import InitECandidate.Proofs.BackendStages.Metadata.Data682
import InitECandidate.Proofs.BackendStages.Padded682
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem walkStep682 : walkShmemLines Padded682.lines 605120 beforeFfis682 beforeShmem682 = (610128, afterFfis682, afterShmem682) := by
  kernel_rfl
theorem shmemStep682 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded682 :: rest) 605120 beforeFfis682 beforeShmem682 = LabToTarget.getShmemInfo rest 610128 afterFfis682 afterShmem682 := by
  rw [getShmemInfo_section, walkStep682]
theorem symbolLength682 : LabToTarget.secLength Padded682.lines 0 = 5008 := by
  kernel_rfl
#print axioms shmemStep682
#print axioms symbolLength682
end InitECandidate.Proofs.BackendStages.Metadata
