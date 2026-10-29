import InitECandidate.Proofs.BackendStages.Metadata.Data348
import InitECandidate.Proofs.BackendStages.Padded348
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem walkStep348 : walkShmemLines Padded348.lines 276424 beforeFfis348 beforeShmem348 = (276448, afterFfis348, afterShmem348) := by
  kernel_rfl
theorem shmemStep348 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded348 :: rest) 276424 beforeFfis348 beforeShmem348 = LabToTarget.getShmemInfo rest 276448 afterFfis348 afterShmem348 := by
  rw [getShmemInfo_section, walkStep348]
theorem symbolLength348 : LabToTarget.secLength Padded348.lines 0 = 24 := by
  kernel_rfl
#print axioms shmemStep348
#print axioms symbolLength348
end InitECandidate.Proofs.BackendStages.Metadata
