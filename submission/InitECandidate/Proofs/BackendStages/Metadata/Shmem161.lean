import InitECandidate.Proofs.BackendStages.Metadata.Data161
import InitECandidate.Proofs.BackendStages.Padded161
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem walkStep161 : walkShmemLines Padded161.lines 87860 beforeFfis161 beforeShmem161 = (90232, afterFfis161, afterShmem161) := by
  kernel_rfl
theorem shmemStep161 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded161 :: rest) 87860 beforeFfis161 beforeShmem161 = LabToTarget.getShmemInfo rest 90232 afterFfis161 afterShmem161 := by
  rw [getShmemInfo_section, walkStep161]
theorem symbolLength161 : LabToTarget.secLength Padded161.lines 0 = 2372 := by
  kernel_rfl
#print axioms shmemStep161
#print axioms symbolLength161
end InitECandidate.Proofs.BackendStages.Metadata
