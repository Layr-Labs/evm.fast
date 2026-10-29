import InitECandidate.Proofs.BackendStages.Metadata.Data316
import InitECandidate.Proofs.BackendStages.Padded316
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem walkStep316 : walkShmemLines Padded316.lines 248560 beforeFfis316 beforeShmem316 = (249460, afterFfis316, afterShmem316) := by
  kernel_rfl
theorem shmemStep316 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded316 :: rest) 248560 beforeFfis316 beforeShmem316 = LabToTarget.getShmemInfo rest 249460 afterFfis316 afterShmem316 := by
  rw [getShmemInfo_section, walkStep316]
theorem symbolLength316 : LabToTarget.secLength Padded316.lines 0 = 900 := by
  kernel_rfl
#print axioms shmemStep316
#print axioms symbolLength316
end InitECandidate.Proofs.BackendStages.Metadata
