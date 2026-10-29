import InitECandidate.Proofs.BackendStages.Metadata.Data683
import InitECandidate.Proofs.BackendStages.Padded683
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem walkStep683 : walkShmemLines Padded683.lines 610128 beforeFfis683 beforeShmem683 = (617988, afterFfis683, afterShmem683) := by
  kernel_rfl
theorem shmemStep683 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded683 :: rest) 610128 beforeFfis683 beforeShmem683 = LabToTarget.getShmemInfo rest 617988 afterFfis683 afterShmem683 := by
  rw [getShmemInfo_section, walkStep683]
theorem symbolLength683 : LabToTarget.secLength Padded683.lines 0 = 7860 := by
  kernel_rfl
#print axioms shmemStep683
#print axioms symbolLength683
end InitECandidate.Proofs.BackendStages.Metadata
