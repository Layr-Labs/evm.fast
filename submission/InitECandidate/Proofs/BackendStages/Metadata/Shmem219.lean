import InitECandidate.Proofs.BackendStages.Metadata.Data219
import InitECandidate.Proofs.BackendStages.Padded219
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem walkStep219 : walkShmemLines Padded219.lines 125184 beforeFfis219 beforeShmem219 = (125244, afterFfis219, afterShmem219) := by
  kernel_rfl
theorem shmemStep219 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded219 :: rest) 125184 beforeFfis219 beforeShmem219 = LabToTarget.getShmemInfo rest 125244 afterFfis219 afterShmem219 := by
  rw [getShmemInfo_section, walkStep219]
theorem symbolLength219 : LabToTarget.secLength Padded219.lines 0 = 60 := by
  kernel_rfl
#print axioms shmemStep219
#print axioms symbolLength219
end InitECandidate.Proofs.BackendStages.Metadata
