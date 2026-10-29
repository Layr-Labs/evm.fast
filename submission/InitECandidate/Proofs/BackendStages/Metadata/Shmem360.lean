import InitECandidate.Proofs.BackendStages.Metadata.Data360
import InitECandidate.Proofs.BackendStages.Padded360
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem walkStep360 : walkShmemLines Padded360.lines 277556 beforeFfis360 beforeShmem360 = (277996, afterFfis360, afterShmem360) := by
  kernel_rfl
theorem shmemStep360 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded360 :: rest) 277556 beforeFfis360 beforeShmem360 = LabToTarget.getShmemInfo rest 277996 afterFfis360 afterShmem360 := by
  rw [getShmemInfo_section, walkStep360]
theorem symbolLength360 : LabToTarget.secLength Padded360.lines 0 = 440 := by
  kernel_rfl
#print axioms shmemStep360
#print axioms symbolLength360
end InitECandidate.Proofs.BackendStages.Metadata
