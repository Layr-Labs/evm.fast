import InitECandidate.Proofs.BackendStages.Metadata.Data659
import InitECandidate.Proofs.BackendStages.Padded659
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem walkStep659 : walkShmemLines Padded659.lines 583864 beforeFfis659 beforeShmem659 = (584456, afterFfis659, afterShmem659) := by
  kernel_rfl
theorem shmemStep659 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded659 :: rest) 583864 beforeFfis659 beforeShmem659 = LabToTarget.getShmemInfo rest 584456 afterFfis659 afterShmem659 := by
  rw [getShmemInfo_section, walkStep659]
theorem symbolLength659 : LabToTarget.secLength Padded659.lines 0 = 592 := by
  kernel_rfl
#print axioms shmemStep659
#print axioms symbolLength659
end InitECandidate.Proofs.BackendStages.Metadata
