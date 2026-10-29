import InitECandidate.Proofs.BackendStages.Metadata.Data590
import InitECandidate.Proofs.BackendStages.Padded590
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem walkStep590 : walkShmemLines Padded590.lines 444676 beforeFfis590 beforeShmem590 = (448084, afterFfis590, afterShmem590) := by
  kernel_rfl
theorem shmemStep590 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded590 :: rest) 444676 beforeFfis590 beforeShmem590 = LabToTarget.getShmemInfo rest 448084 afterFfis590 afterShmem590 := by
  rw [getShmemInfo_section, walkStep590]
theorem symbolLength590 : LabToTarget.secLength Padded590.lines 0 = 3408 := by
  kernel_rfl
#print axioms shmemStep590
#print axioms symbolLength590
end InitECandidate.Proofs.BackendStages.Metadata
