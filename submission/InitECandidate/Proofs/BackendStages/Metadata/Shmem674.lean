import InitECandidate.Proofs.BackendStages.Metadata.Data674
import InitECandidate.Proofs.BackendStages.Padded674
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem walkStep674 : walkShmemLines Padded674.lines 603560 beforeFfis674 beforeShmem674 = (603860, afterFfis674, afterShmem674) := by
  kernel_rfl
theorem shmemStep674 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded674 :: rest) 603560 beforeFfis674 beforeShmem674 = LabToTarget.getShmemInfo rest 603860 afterFfis674 afterShmem674 := by
  rw [getShmemInfo_section, walkStep674]
theorem symbolLength674 : LabToTarget.secLength Padded674.lines 0 = 300 := by
  kernel_rfl
#print axioms shmemStep674
#print axioms symbolLength674
end InitECandidate.Proofs.BackendStages.Metadata
