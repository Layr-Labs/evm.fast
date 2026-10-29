import InitECandidate.Proofs.BackendStages.Metadata.Data332
import InitECandidate.Proofs.BackendStages.Padded332
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem walkStep332 : walkShmemLines Padded332.lines 260500 beforeFfis332 beforeShmem332 = (261456, afterFfis332, afterShmem332) := by
  kernel_rfl
theorem shmemStep332 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded332 :: rest) 260500 beforeFfis332 beforeShmem332 = LabToTarget.getShmemInfo rest 261456 afterFfis332 afterShmem332 := by
  rw [getShmemInfo_section, walkStep332]
theorem symbolLength332 : LabToTarget.secLength Padded332.lines 0 = 956 := by
  kernel_rfl
#print axioms shmemStep332
#print axioms symbolLength332
end InitECandidate.Proofs.BackendStages.Metadata
