import InitECandidate.Proofs.BackendStages.Metadata.Data584
import InitECandidate.Proofs.BackendStages.Padded584
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem walkStep584 : walkShmemLines Padded584.lines 435888 beforeFfis584 beforeShmem584 = (437912, afterFfis584, afterShmem584) := by
  kernel_rfl
theorem shmemStep584 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded584 :: rest) 435888 beforeFfis584 beforeShmem584 = LabToTarget.getShmemInfo rest 437912 afterFfis584 afterShmem584 := by
  rw [getShmemInfo_section, walkStep584]
theorem symbolLength584 : LabToTarget.secLength Padded584.lines 0 = 2024 := by
  kernel_rfl
#print axioms shmemStep584
#print axioms symbolLength584
end InitECandidate.Proofs.BackendStages.Metadata
