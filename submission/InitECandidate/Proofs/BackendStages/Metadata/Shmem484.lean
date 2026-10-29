import InitECandidate.Proofs.BackendStages.Metadata.Data484
import InitECandidate.Proofs.BackendStages.Padded484
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem walkStep484 : walkShmemLines Padded484.lines 363328 beforeFfis484 beforeShmem484 = (363664, afterFfis484, afterShmem484) := by
  kernel_rfl
theorem shmemStep484 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded484 :: rest) 363328 beforeFfis484 beforeShmem484 = LabToTarget.getShmemInfo rest 363664 afterFfis484 afterShmem484 := by
  rw [getShmemInfo_section, walkStep484]
theorem symbolLength484 : LabToTarget.secLength Padded484.lines 0 = 336 := by
  kernel_rfl
#print axioms shmemStep484
#print axioms symbolLength484
end InitECandidate.Proofs.BackendStages.Metadata
