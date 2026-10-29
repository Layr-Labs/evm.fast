import InitECandidate.Proofs.BackendStages.Metadata.Data387
import InitECandidate.Proofs.BackendStages.Padded387
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem walkStep387 : walkShmemLines Padded387.lines 297620 beforeFfis387 beforeShmem387 = (298900, afterFfis387, afterShmem387) := by
  kernel_rfl
theorem shmemStep387 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded387 :: rest) 297620 beforeFfis387 beforeShmem387 = LabToTarget.getShmemInfo rest 298900 afterFfis387 afterShmem387 := by
  rw [getShmemInfo_section, walkStep387]
theorem symbolLength387 : LabToTarget.secLength Padded387.lines 0 = 1280 := by
  kernel_rfl
#print axioms shmemStep387
#print axioms symbolLength387
end InitECandidate.Proofs.BackendStages.Metadata
