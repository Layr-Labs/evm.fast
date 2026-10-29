import InitECandidate.Proofs.BackendStages.Metadata.Data813
import InitECandidate.Proofs.BackendStages.Padded813
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem walkStep813 : walkShmemLines Padded813.lines 875924 beforeFfis813 beforeShmem813 = (878164, afterFfis813, afterShmem813) := by
  kernel_rfl
theorem shmemStep813 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded813 :: rest) 875924 beforeFfis813 beforeShmem813 = LabToTarget.getShmemInfo rest 878164 afterFfis813 afterShmem813 := by
  rw [getShmemInfo_section, walkStep813]
theorem symbolLength813 : LabToTarget.secLength Padded813.lines 0 = 2240 := by
  kernel_rfl
#print axioms shmemStep813
#print axioms symbolLength813
end InitECandidate.Proofs.BackendStages.Metadata
