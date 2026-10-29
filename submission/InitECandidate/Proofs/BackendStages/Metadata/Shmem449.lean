import InitECandidate.Proofs.BackendStages.Metadata.Data449
import InitECandidate.Proofs.BackendStages.Padded449
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem walkStep449 : walkShmemLines Padded449.lines 329344 beforeFfis449 beforeShmem449 = (330944, afterFfis449, afterShmem449) := by
  kernel_rfl
theorem shmemStep449 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded449 :: rest) 329344 beforeFfis449 beforeShmem449 = LabToTarget.getShmemInfo rest 330944 afterFfis449 afterShmem449 := by
  rw [getShmemInfo_section, walkStep449]
theorem symbolLength449 : LabToTarget.secLength Padded449.lines 0 = 1600 := by
  kernel_rfl
#print axioms shmemStep449
#print axioms symbolLength449
end InitECandidate.Proofs.BackendStages.Metadata
