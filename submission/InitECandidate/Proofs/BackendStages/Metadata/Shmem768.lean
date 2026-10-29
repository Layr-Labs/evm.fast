import InitECandidate.Proofs.BackendStages.Metadata.Data768
import InitECandidate.Proofs.BackendStages.Padded768
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem walkStep768 : walkShmemLines Padded768.lines 767408 beforeFfis768 beforeShmem768 = (767556, afterFfis768, afterShmem768) := by
  kernel_rfl
theorem shmemStep768 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded768 :: rest) 767408 beforeFfis768 beforeShmem768 = LabToTarget.getShmemInfo rest 767556 afterFfis768 afterShmem768 := by
  rw [getShmemInfo_section, walkStep768]
theorem symbolLength768 : LabToTarget.secLength Padded768.lines 0 = 148 := by
  kernel_rfl
#print axioms shmemStep768
#print axioms symbolLength768
end InitECandidate.Proofs.BackendStages.Metadata
