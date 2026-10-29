import InitECandidate.Proofs.BackendStages.Metadata.Data425
import InitECandidate.Proofs.BackendStages.Padded425
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem walkStep425 : walkShmemLines Padded425.lines 316048 beforeFfis425 beforeShmem425 = (316216, afterFfis425, afterShmem425) := by
  kernel_rfl
theorem shmemStep425 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded425 :: rest) 316048 beforeFfis425 beforeShmem425 = LabToTarget.getShmemInfo rest 316216 afterFfis425 afterShmem425 := by
  rw [getShmemInfo_section, walkStep425]
theorem symbolLength425 : LabToTarget.secLength Padded425.lines 0 = 168 := by
  kernel_rfl
#print axioms shmemStep425
#print axioms symbolLength425
end InitECandidate.Proofs.BackendStages.Metadata
