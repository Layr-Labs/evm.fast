import InitECandidate.Proofs.BackendStages.Metadata.Data357
import InitECandidate.Proofs.BackendStages.Padded357
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem walkStep357 : walkShmemLines Padded357.lines 276592 beforeFfis357 beforeShmem357 = (277308, afterFfis357, afterShmem357) := by
  kernel_rfl
theorem shmemStep357 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded357 :: rest) 276592 beforeFfis357 beforeShmem357 = LabToTarget.getShmemInfo rest 277308 afterFfis357 afterShmem357 := by
  rw [getShmemInfo_section, walkStep357]
theorem symbolLength357 : LabToTarget.secLength Padded357.lines 0 = 716 := by
  kernel_rfl
#print axioms shmemStep357
#print axioms symbolLength357
end InitECandidate.Proofs.BackendStages.Metadata
