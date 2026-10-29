import InitECandidate.Proofs.BackendStages.Metadata.Data638
import InitECandidate.Proofs.BackendStages.Padded638
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem walkStep638 : walkShmemLines Padded638.lines 532184 beforeFfis638 beforeShmem638 = (534860, afterFfis638, afterShmem638) := by
  kernel_rfl
theorem shmemStep638 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded638 :: rest) 532184 beforeFfis638 beforeShmem638 = LabToTarget.getShmemInfo rest 534860 afterFfis638 afterShmem638 := by
  rw [getShmemInfo_section, walkStep638]
theorem symbolLength638 : LabToTarget.secLength Padded638.lines 0 = 2676 := by
  kernel_rfl
#print axioms shmemStep638
#print axioms symbolLength638
end InitECandidate.Proofs.BackendStages.Metadata
