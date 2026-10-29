import InitECandidate.Proofs.BackendStages.Metadata.Data154
import InitECandidate.Proofs.BackendStages.Padded154
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem walkStep154 : walkShmemLines Padded154.lines 53120 beforeFfis154 beforeShmem154 = (83024, afterFfis154, afterShmem154) := by
  kernel_rfl
theorem shmemStep154 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded154 :: rest) 53120 beforeFfis154 beforeShmem154 = LabToTarget.getShmemInfo rest 83024 afterFfis154 afterShmem154 := by
  rw [getShmemInfo_section, walkStep154]
theorem symbolLength154 : LabToTarget.secLength Padded154.lines 0 = 29904 := by
  kernel_rfl
#print axioms shmemStep154
#print axioms symbolLength154
end InitECandidate.Proofs.BackendStages.Metadata
