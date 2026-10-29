import InitECandidate.Proofs.BackendStages.Metadata.Data470
import InitECandidate.Proofs.BackendStages.Padded470
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem walkStep470 : walkShmemLines Padded470.lines 358016 beforeFfis470 beforeShmem470 = (358100, afterFfis470, afterShmem470) := by
  kernel_rfl
theorem shmemStep470 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded470 :: rest) 358016 beforeFfis470 beforeShmem470 = LabToTarget.getShmemInfo rest 358100 afterFfis470 afterShmem470 := by
  rw [getShmemInfo_section, walkStep470]
theorem symbolLength470 : LabToTarget.secLength Padded470.lines 0 = 84 := by
  kernel_rfl
#print axioms shmemStep470
#print axioms symbolLength470
end InitECandidate.Proofs.BackendStages.Metadata
