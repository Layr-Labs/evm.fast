import InitECandidate.Proofs.BackendStages.Metadata.Data297
import InitECandidate.Proofs.BackendStages.Padded297
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem walkStep297 : walkShmemLines Padded297.lines 233096 beforeFfis297 beforeShmem297 = (233352, afterFfis297, afterShmem297) := by
  kernel_rfl
theorem shmemStep297 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded297 :: rest) 233096 beforeFfis297 beforeShmem297 = LabToTarget.getShmemInfo rest 233352 afterFfis297 afterShmem297 := by
  rw [getShmemInfo_section, walkStep297]
theorem symbolLength297 : LabToTarget.secLength Padded297.lines 0 = 256 := by
  kernel_rfl
#print axioms shmemStep297
#print axioms symbolLength297
end InitECandidate.Proofs.BackendStages.Metadata
