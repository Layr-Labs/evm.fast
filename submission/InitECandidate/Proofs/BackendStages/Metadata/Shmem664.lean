import InitECandidate.Proofs.BackendStages.Metadata.Data664
import InitECandidate.Proofs.BackendStages.Padded664
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem walkStep664 : walkShmemLines Padded664.lines 594980 beforeFfis664 beforeShmem664 = (595332, afterFfis664, afterShmem664) := by
  kernel_rfl
theorem shmemStep664 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded664 :: rest) 594980 beforeFfis664 beforeShmem664 = LabToTarget.getShmemInfo rest 595332 afterFfis664 afterShmem664 := by
  rw [getShmemInfo_section, walkStep664]
theorem symbolLength664 : LabToTarget.secLength Padded664.lines 0 = 352 := by
  kernel_rfl
#print axioms shmemStep664
#print axioms symbolLength664
end InitECandidate.Proofs.BackendStages.Metadata
