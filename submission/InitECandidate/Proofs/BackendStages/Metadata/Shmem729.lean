import InitECandidate.Proofs.BackendStages.Metadata.Data729
import InitECandidate.Proofs.BackendStages.Padded729
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem walkStep729 : walkShmemLines Padded729.lines 733168 beforeFfis729 beforeShmem729 = (733316, afterFfis729, afterShmem729) := by
  kernel_rfl
theorem shmemStep729 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded729 :: rest) 733168 beforeFfis729 beforeShmem729 = LabToTarget.getShmemInfo rest 733316 afterFfis729 afterShmem729 := by
  rw [getShmemInfo_section, walkStep729]
theorem symbolLength729 : LabToTarget.secLength Padded729.lines 0 = 148 := by
  kernel_rfl
#print axioms shmemStep729
#print axioms symbolLength729
end InitECandidate.Proofs.BackendStages.Metadata
