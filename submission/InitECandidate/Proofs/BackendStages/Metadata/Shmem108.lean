import InitECandidate.Proofs.BackendStages.Metadata.Data108
import InitECandidate.Proofs.BackendStages.Padded108
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem walkStep108 : walkShmemLines Padded108.lines 11208 beforeFfis108 beforeShmem108 = (11304, afterFfis108, afterShmem108) := by
  kernel_rfl
theorem shmemStep108 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded108 :: rest) 11208 beforeFfis108 beforeShmem108 = LabToTarget.getShmemInfo rest 11304 afterFfis108 afterShmem108 := by
  rw [getShmemInfo_section, walkStep108]
theorem symbolLength108 : LabToTarget.secLength Padded108.lines 0 = 96 := by
  kernel_rfl
#print axioms shmemStep108
#print axioms symbolLength108
end InitECandidate.Proofs.BackendStages.Metadata
