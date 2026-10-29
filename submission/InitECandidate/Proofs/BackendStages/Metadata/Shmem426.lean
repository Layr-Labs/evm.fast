import InitECandidate.Proofs.BackendStages.Metadata.Data426
import InitECandidate.Proofs.BackendStages.Padded426
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem walkStep426 : walkShmemLines Padded426.lines 316216 beforeFfis426 beforeShmem426 = (316980, afterFfis426, afterShmem426) := by
  kernel_rfl
theorem shmemStep426 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded426 :: rest) 316216 beforeFfis426 beforeShmem426 = LabToTarget.getShmemInfo rest 316980 afterFfis426 afterShmem426 := by
  rw [getShmemInfo_section, walkStep426]
theorem symbolLength426 : LabToTarget.secLength Padded426.lines 0 = 764 := by
  kernel_rfl
#print axioms shmemStep426
#print axioms symbolLength426
end InitECandidate.Proofs.BackendStages.Metadata
