import InitECandidate.Proofs.BackendStages.Metadata.Data646
import InitECandidate.Proofs.BackendStages.Padded646
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem walkStep646 : walkShmemLines Padded646.lines 548956 beforeFfis646 beforeShmem646 = (554332, afterFfis646, afterShmem646) := by
  kernel_rfl
theorem shmemStep646 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded646 :: rest) 548956 beforeFfis646 beforeShmem646 = LabToTarget.getShmemInfo rest 554332 afterFfis646 afterShmem646 := by
  rw [getShmemInfo_section, walkStep646]
theorem symbolLength646 : LabToTarget.secLength Padded646.lines 0 = 5376 := by
  kernel_rfl
#print axioms shmemStep646
#print axioms symbolLength646
end InitECandidate.Proofs.BackendStages.Metadata
