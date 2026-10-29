import InitECandidate.Proofs.BackendStages.Metadata.Data291
import InitECandidate.Proofs.BackendStages.Padded291
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem walkStep291 : walkShmemLines Padded291.lines 231088 beforeFfis291 beforeShmem291 = (231344, afterFfis291, afterShmem291) := by
  kernel_rfl
theorem shmemStep291 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded291 :: rest) 231088 beforeFfis291 beforeShmem291 = LabToTarget.getShmemInfo rest 231344 afterFfis291 afterShmem291 := by
  rw [getShmemInfo_section, walkStep291]
theorem symbolLength291 : LabToTarget.secLength Padded291.lines 0 = 256 := by
  kernel_rfl
#print axioms shmemStep291
#print axioms symbolLength291
end InitECandidate.Proofs.BackendStages.Metadata
