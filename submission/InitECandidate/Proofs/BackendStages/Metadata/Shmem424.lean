import InitECandidate.Proofs.BackendStages.Metadata.Data424
import InitECandidate.Proofs.BackendStages.Padded424
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem walkStep424 : walkShmemLines Padded424.lines 315532 beforeFfis424 beforeShmem424 = (316048, afterFfis424, afterShmem424) := by
  kernel_rfl
theorem shmemStep424 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded424 :: rest) 315532 beforeFfis424 beforeShmem424 = LabToTarget.getShmemInfo rest 316048 afterFfis424 afterShmem424 := by
  rw [getShmemInfo_section, walkStep424]
theorem symbolLength424 : LabToTarget.secLength Padded424.lines 0 = 516 := by
  kernel_rfl
#print axioms shmemStep424
#print axioms symbolLength424
end InitECandidate.Proofs.BackendStages.Metadata
