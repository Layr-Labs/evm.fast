import InitECandidate.Proofs.BackendStages.Metadata.Data255
import InitECandidate.Proofs.BackendStages.Padded255
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem walkStep255 : walkShmemLines Padded255.lines 189000 beforeFfis255 beforeShmem255 = (189488, afterFfis255, afterShmem255) := by
  kernel_rfl
theorem shmemStep255 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded255 :: rest) 189000 beforeFfis255 beforeShmem255 = LabToTarget.getShmemInfo rest 189488 afterFfis255 afterShmem255 := by
  rw [getShmemInfo_section, walkStep255]
theorem symbolLength255 : LabToTarget.secLength Padded255.lines 0 = 488 := by
  kernel_rfl
#print axioms shmemStep255
#print axioms symbolLength255
end InitECandidate.Proofs.BackendStages.Metadata
