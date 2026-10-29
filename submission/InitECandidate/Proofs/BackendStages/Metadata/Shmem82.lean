import InitECandidate.Proofs.BackendStages.Metadata.Data82
import InitECandidate.Proofs.BackendStages.Padded82
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem walkStep82 : walkShmemLines Padded82.lines 8092 beforeFfis82 beforeShmem82 = (8212, afterFfis82, afterShmem82) := by
  kernel_rfl
theorem shmemStep82 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded82 :: rest) 8092 beforeFfis82 beforeShmem82 = LabToTarget.getShmemInfo rest 8212 afterFfis82 afterShmem82 := by
  rw [getShmemInfo_section, walkStep82]
theorem symbolLength82 : LabToTarget.secLength Padded82.lines 0 = 120 := by
  kernel_rfl
#print axioms shmemStep82
#print axioms symbolLength82
end InitECandidate.Proofs.BackendStages.Metadata
