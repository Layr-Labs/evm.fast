import InitECandidate.Proofs.BackendStages.Metadata.Data412
import InitECandidate.Proofs.BackendStages.Padded412
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem walkStep412 : walkShmemLines Padded412.lines 310336 beforeFfis412 beforeShmem412 = (310652, afterFfis412, afterShmem412) := by
  kernel_rfl
theorem shmemStep412 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded412 :: rest) 310336 beforeFfis412 beforeShmem412 = LabToTarget.getShmemInfo rest 310652 afterFfis412 afterShmem412 := by
  rw [getShmemInfo_section, walkStep412]
theorem symbolLength412 : LabToTarget.secLength Padded412.lines 0 = 316 := by
  kernel_rfl
#print axioms shmemStep412
#print axioms symbolLength412
end InitECandidate.Proofs.BackendStages.Metadata
