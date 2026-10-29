import InitECandidate.Proofs.BackendStages.Metadata.Data106
import InitECandidate.Proofs.BackendStages.Padded106
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem walkStep106 : walkShmemLines Padded106.lines 11060 beforeFfis106 beforeShmem106 = (11156, afterFfis106, afterShmem106) := by
  kernel_rfl
theorem shmemStep106 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded106 :: rest) 11060 beforeFfis106 beforeShmem106 = LabToTarget.getShmemInfo rest 11156 afterFfis106 afterShmem106 := by
  rw [getShmemInfo_section, walkStep106]
theorem symbolLength106 : LabToTarget.secLength Padded106.lines 0 = 96 := by
  kernel_rfl
#print axioms shmemStep106
#print axioms symbolLength106
end InitECandidate.Proofs.BackendStages.Metadata
