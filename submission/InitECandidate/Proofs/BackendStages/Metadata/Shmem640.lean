import InitECandidate.Proofs.BackendStages.Metadata.Data640
import InitECandidate.Proofs.BackendStages.Padded640
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem walkStep640 : walkShmemLines Padded640.lines 535504 beforeFfis640 beforeShmem640 = (535764, afterFfis640, afterShmem640) := by
  kernel_rfl
theorem shmemStep640 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded640 :: rest) 535504 beforeFfis640 beforeShmem640 = LabToTarget.getShmemInfo rest 535764 afterFfis640 afterShmem640 := by
  rw [getShmemInfo_section, walkStep640]
theorem symbolLength640 : LabToTarget.secLength Padded640.lines 0 = 260 := by
  kernel_rfl
#print axioms shmemStep640
#print axioms symbolLength640
end InitECandidate.Proofs.BackendStages.Metadata
