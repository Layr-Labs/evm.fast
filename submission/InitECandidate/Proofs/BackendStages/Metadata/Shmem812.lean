import InitECandidate.Proofs.BackendStages.Metadata.Data812
import InitECandidate.Proofs.BackendStages.Padded812
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem walkStep812 : walkShmemLines Padded812.lines 874652 beforeFfis812 beforeShmem812 = (875924, afterFfis812, afterShmem812) := by
  kernel_rfl
theorem shmemStep812 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded812 :: rest) 874652 beforeFfis812 beforeShmem812 = LabToTarget.getShmemInfo rest 875924 afterFfis812 afterShmem812 := by
  rw [getShmemInfo_section, walkStep812]
theorem symbolLength812 : LabToTarget.secLength Padded812.lines 0 = 1272 := by
  kernel_rfl
#print axioms shmemStep812
#print axioms symbolLength812
end InitECandidate.Proofs.BackendStages.Metadata
