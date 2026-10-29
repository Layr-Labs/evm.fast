import InitECandidate.Proofs.BackendStages.Metadata.Data384
import InitECandidate.Proofs.BackendStages.Padded384
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem walkStep384 : walkShmemLines Padded384.lines 294128 beforeFfis384 beforeShmem384 = (295112, afterFfis384, afterShmem384) := by
  kernel_rfl
theorem shmemStep384 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded384 :: rest) 294128 beforeFfis384 beforeShmem384 = LabToTarget.getShmemInfo rest 295112 afterFfis384 afterShmem384 := by
  rw [getShmemInfo_section, walkStep384]
theorem symbolLength384 : LabToTarget.secLength Padded384.lines 0 = 984 := by
  kernel_rfl
#print axioms shmemStep384
#print axioms symbolLength384
end InitECandidate.Proofs.BackendStages.Metadata
