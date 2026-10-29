import InitECandidate.Proofs.BackendStages.Metadata.Data130
import InitECandidate.Proofs.BackendStages.Padded130
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem walkStep130 : walkShmemLines Padded130.lines 23176 beforeFfis130 beforeShmem130 = (23320, afterFfis130, afterShmem130) := by
  kernel_rfl
theorem shmemStep130 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded130 :: rest) 23176 beforeFfis130 beforeShmem130 = LabToTarget.getShmemInfo rest 23320 afterFfis130 afterShmem130 := by
  rw [getShmemInfo_section, walkStep130]
theorem symbolLength130 : LabToTarget.secLength Padded130.lines 0 = 144 := by
  kernel_rfl
#print axioms shmemStep130
#print axioms symbolLength130
end InitECandidate.Proofs.BackendStages.Metadata
