import InitECandidate.Proofs.BackendStages.Metadata.Data769
import InitECandidate.Proofs.BackendStages.Padded769
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem walkStep769 : walkShmemLines Padded769.lines 767556 beforeFfis769 beforeShmem769 = (767916, afterFfis769, afterShmem769) := by
  kernel_rfl
theorem shmemStep769 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded769 :: rest) 767556 beforeFfis769 beforeShmem769 = LabToTarget.getShmemInfo rest 767916 afterFfis769 afterShmem769 := by
  rw [getShmemInfo_section, walkStep769]
theorem symbolLength769 : LabToTarget.secLength Padded769.lines 0 = 360 := by
  kernel_rfl
#print axioms shmemStep769
#print axioms symbolLength769
end InitECandidate.Proofs.BackendStages.Metadata
