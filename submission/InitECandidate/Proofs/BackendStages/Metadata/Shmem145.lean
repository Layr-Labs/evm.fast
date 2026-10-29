import InitECandidate.Proofs.BackendStages.Metadata.Data145
import InitECandidate.Proofs.BackendStages.Padded145
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem walkStep145 : walkShmemLines Padded145.lines 30172 beforeFfis145 beforeShmem145 = (30392, afterFfis145, afterShmem145) := by
  kernel_rfl
theorem shmemStep145 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded145 :: rest) 30172 beforeFfis145 beforeShmem145 = LabToTarget.getShmemInfo rest 30392 afterFfis145 afterShmem145 := by
  rw [getShmemInfo_section, walkStep145]
theorem symbolLength145 : LabToTarget.secLength Padded145.lines 0 = 220 := by
  kernel_rfl
#print axioms shmemStep145
#print axioms symbolLength145
end InitECandidate.Proofs.BackendStages.Metadata
