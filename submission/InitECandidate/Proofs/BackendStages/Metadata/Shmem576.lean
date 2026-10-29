import InitECandidate.Proofs.BackendStages.Metadata.Data576
import InitECandidate.Proofs.BackendStages.Padded576
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem walkStep576 : walkShmemLines Padded576.lines 431096 beforeFfis576 beforeShmem576 = (432476, afterFfis576, afterShmem576) := by
  kernel_rfl
theorem shmemStep576 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded576 :: rest) 431096 beforeFfis576 beforeShmem576 = LabToTarget.getShmemInfo rest 432476 afterFfis576 afterShmem576 := by
  rw [getShmemInfo_section, walkStep576]
theorem symbolLength576 : LabToTarget.secLength Padded576.lines 0 = 1380 := by
  kernel_rfl
#print axioms shmemStep576
#print axioms symbolLength576
end InitECandidate.Proofs.BackendStages.Metadata
