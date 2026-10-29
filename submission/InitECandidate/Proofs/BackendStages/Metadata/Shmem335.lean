import InitECandidate.Proofs.BackendStages.Metadata.Data335
import InitECandidate.Proofs.BackendStages.Padded335
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem walkStep335 : walkShmemLines Padded335.lines 265876 beforeFfis335 beforeShmem335 = (266148, afterFfis335, afterShmem335) := by
  kernel_rfl
theorem shmemStep335 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded335 :: rest) 265876 beforeFfis335 beforeShmem335 = LabToTarget.getShmemInfo rest 266148 afterFfis335 afterShmem335 := by
  rw [getShmemInfo_section, walkStep335]
theorem symbolLength335 : LabToTarget.secLength Padded335.lines 0 = 272 := by
  kernel_rfl
#print axioms shmemStep335
#print axioms symbolLength335
end InitECandidate.Proofs.BackendStages.Metadata
