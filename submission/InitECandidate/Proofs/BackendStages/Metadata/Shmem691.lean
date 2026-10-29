import InitECandidate.Proofs.BackendStages.Metadata.Data691
import InitECandidate.Proofs.BackendStages.Padded691
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem walkStep691 : walkShmemLines Padded691.lines 631196 beforeFfis691 beforeShmem691 = (637112, afterFfis691, afterShmem691) := by
  kernel_rfl
theorem shmemStep691 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded691 :: rest) 631196 beforeFfis691 beforeShmem691 = LabToTarget.getShmemInfo rest 637112 afterFfis691 afterShmem691 := by
  rw [getShmemInfo_section, walkStep691]
theorem symbolLength691 : LabToTarget.secLength Padded691.lines 0 = 5916 := by
  kernel_rfl
#print axioms shmemStep691
#print axioms symbolLength691
end InitECandidate.Proofs.BackendStages.Metadata
