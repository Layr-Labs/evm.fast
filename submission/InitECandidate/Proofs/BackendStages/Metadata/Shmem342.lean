import InitECandidate.Proofs.BackendStages.Metadata.Data342
import InitECandidate.Proofs.BackendStages.Padded342
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem walkStep342 : walkShmemLines Padded342.lines 267404 beforeFfis342 beforeShmem342 = (269352, afterFfis342, afterShmem342) := by
  kernel_rfl
theorem shmemStep342 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded342 :: rest) 267404 beforeFfis342 beforeShmem342 = LabToTarget.getShmemInfo rest 269352 afterFfis342 afterShmem342 := by
  rw [getShmemInfo_section, walkStep342]
theorem symbolLength342 : LabToTarget.secLength Padded342.lines 0 = 1948 := by
  kernel_rfl
#print axioms shmemStep342
#print axioms symbolLength342
end InitECandidate.Proofs.BackendStages.Metadata
