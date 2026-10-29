import InitECandidate.Proofs.BackendStages.Metadata.Data486
import InitECandidate.Proofs.BackendStages.Padded486
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem walkStep486 : walkShmemLines Padded486.lines 364372 beforeFfis486 beforeShmem486 = (364468, afterFfis486, afterShmem486) := by
  kernel_rfl
theorem shmemStep486 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded486 :: rest) 364372 beforeFfis486 beforeShmem486 = LabToTarget.getShmemInfo rest 364468 afterFfis486 afterShmem486 := by
  rw [getShmemInfo_section, walkStep486]
theorem symbolLength486 : LabToTarget.secLength Padded486.lines 0 = 96 := by
  kernel_rfl
#print axioms shmemStep486
#print axioms symbolLength486
end InitECandidate.Proofs.BackendStages.Metadata
