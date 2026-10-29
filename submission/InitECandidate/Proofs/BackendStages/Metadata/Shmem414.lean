import InitECandidate.Proofs.BackendStages.Metadata.Data414
import InitECandidate.Proofs.BackendStages.Padded414
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem walkStep414 : walkShmemLines Padded414.lines 310816 beforeFfis414 beforeShmem414 = (311456, afterFfis414, afterShmem414) := by
  kernel_rfl
theorem shmemStep414 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded414 :: rest) 310816 beforeFfis414 beforeShmem414 = LabToTarget.getShmemInfo rest 311456 afterFfis414 afterShmem414 := by
  rw [getShmemInfo_section, walkStep414]
theorem symbolLength414 : LabToTarget.secLength Padded414.lines 0 = 640 := by
  kernel_rfl
#print axioms shmemStep414
#print axioms symbolLength414
end InitECandidate.Proofs.BackendStages.Metadata
