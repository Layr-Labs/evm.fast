import InitECandidate.Proofs.BackendStages.Metadata.Data473
import InitECandidate.Proofs.BackendStages.Padded473
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem walkStep473 : walkShmemLines Padded473.lines 358688 beforeFfis473 beforeShmem473 = (358716, afterFfis473, afterShmem473) := by
  kernel_rfl
theorem shmemStep473 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded473 :: rest) 358688 beforeFfis473 beforeShmem473 = LabToTarget.getShmemInfo rest 358716 afterFfis473 afterShmem473 := by
  rw [getShmemInfo_section, walkStep473]
theorem symbolLength473 : LabToTarget.secLength Padded473.lines 0 = 28 := by
  kernel_rfl
#print axioms shmemStep473
#print axioms symbolLength473
end InitECandidate.Proofs.BackendStages.Metadata
