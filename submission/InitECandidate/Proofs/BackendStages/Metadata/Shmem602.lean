import InitECandidate.Proofs.BackendStages.Metadata.Data602
import InitECandidate.Proofs.BackendStages.Padded602
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem walkStep602 : walkShmemLines Padded602.lines 475560 beforeFfis602 beforeShmem602 = (476460, afterFfis602, afterShmem602) := by
  kernel_rfl
theorem shmemStep602 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded602 :: rest) 475560 beforeFfis602 beforeShmem602 = LabToTarget.getShmemInfo rest 476460 afterFfis602 afterShmem602 := by
  rw [getShmemInfo_section, walkStep602]
theorem symbolLength602 : LabToTarget.secLength Padded602.lines 0 = 900 := by
  kernel_rfl
#print axioms shmemStep602
#print axioms symbolLength602
end InitECandidate.Proofs.BackendStages.Metadata
