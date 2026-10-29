import InitECandidate.Proofs.BackendStages.Metadata.Data665
import InitECandidate.Proofs.BackendStages.Padded665
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem walkStep665 : walkShmemLines Padded665.lines 595332 beforeFfis665 beforeShmem665 = (596092, afterFfis665, afterShmem665) := by
  kernel_rfl
theorem shmemStep665 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded665 :: rest) 595332 beforeFfis665 beforeShmem665 = LabToTarget.getShmemInfo rest 596092 afterFfis665 afterShmem665 := by
  rw [getShmemInfo_section, walkStep665]
theorem symbolLength665 : LabToTarget.secLength Padded665.lines 0 = 760 := by
  kernel_rfl
#print axioms shmemStep665
#print axioms symbolLength665
end InitECandidate.Proofs.BackendStages.Metadata
