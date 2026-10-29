import InitECandidate.Proofs.BackendStages.Metadata.Data267
import InitECandidate.Proofs.BackendStages.Padded267
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem walkStep267 : walkShmemLines Padded267.lines 206612 beforeFfis267 beforeShmem267 = (207640, afterFfis267, afterShmem267) := by
  kernel_rfl
theorem shmemStep267 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded267 :: rest) 206612 beforeFfis267 beforeShmem267 = LabToTarget.getShmemInfo rest 207640 afterFfis267 afterShmem267 := by
  rw [getShmemInfo_section, walkStep267]
theorem symbolLength267 : LabToTarget.secLength Padded267.lines 0 = 1028 := by
  kernel_rfl
#print axioms shmemStep267
#print axioms symbolLength267
end InitECandidate.Proofs.BackendStages.Metadata
