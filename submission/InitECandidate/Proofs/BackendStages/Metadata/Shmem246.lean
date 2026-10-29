import InitECandidate.Proofs.BackendStages.Metadata.Data246
import InitECandidate.Proofs.BackendStages.Padded246
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem walkStep246 : walkShmemLines Padded246.lines 179136 beforeFfis246 beforeShmem246 = (179176, afterFfis246, afterShmem246) := by
  kernel_rfl
theorem shmemStep246 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded246 :: rest) 179136 beforeFfis246 beforeShmem246 = LabToTarget.getShmemInfo rest 179176 afterFfis246 afterShmem246 := by
  rw [getShmemInfo_section, walkStep246]
theorem symbolLength246 : LabToTarget.secLength Padded246.lines 0 = 40 := by
  kernel_rfl
#print axioms shmemStep246
#print axioms symbolLength246
end InitECandidate.Proofs.BackendStages.Metadata
