import InitECandidate.Proofs.BackendStages.Metadata.Data131
import InitECandidate.Proofs.BackendStages.Padded131
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem walkStep131 : walkShmemLines Padded131.lines 23320 beforeFfis131 beforeShmem131 = (23472, afterFfis131, afterShmem131) := by
  kernel_rfl
theorem shmemStep131 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded131 :: rest) 23320 beforeFfis131 beforeShmem131 = LabToTarget.getShmemInfo rest 23472 afterFfis131 afterShmem131 := by
  rw [getShmemInfo_section, walkStep131]
theorem symbolLength131 : LabToTarget.secLength Padded131.lines 0 = 152 := by
  kernel_rfl
#print axioms shmemStep131
#print axioms symbolLength131
end InitECandidate.Proofs.BackendStages.Metadata
