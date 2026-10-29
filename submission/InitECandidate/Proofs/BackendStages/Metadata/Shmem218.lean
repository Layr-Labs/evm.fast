import InitECandidate.Proofs.BackendStages.Metadata.Data218
import InitECandidate.Proofs.BackendStages.Padded218
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem walkStep218 : walkShmemLines Padded218.lines 125124 beforeFfis218 beforeShmem218 = (125184, afterFfis218, afterShmem218) := by
  kernel_rfl
theorem shmemStep218 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded218 :: rest) 125124 beforeFfis218 beforeShmem218 = LabToTarget.getShmemInfo rest 125184 afterFfis218 afterShmem218 := by
  rw [getShmemInfo_section, walkStep218]
theorem symbolLength218 : LabToTarget.secLength Padded218.lines 0 = 60 := by
  kernel_rfl
#print axioms shmemStep218
#print axioms symbolLength218
end InitECandidate.Proofs.BackendStages.Metadata
