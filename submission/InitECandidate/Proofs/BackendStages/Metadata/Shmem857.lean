import InitECandidate.Proofs.BackendStages.Metadata.Data857
import InitECandidate.Proofs.BackendStages.Padded857
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem walkStep857 : walkShmemLines Padded857.lines 939636 beforeFfis857 beforeShmem857 = (939856, afterFfis857, afterShmem857) := by
  kernel_rfl
theorem shmemStep857 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded857 :: rest) 939636 beforeFfis857 beforeShmem857 = LabToTarget.getShmemInfo rest 939856 afterFfis857 afterShmem857 := by
  rw [getShmemInfo_section, walkStep857]
theorem symbolLength857 : LabToTarget.secLength Padded857.lines 0 = 220 := by
  kernel_rfl
#print axioms shmemStep857
#print axioms symbolLength857
end InitECandidate.Proofs.BackendStages.Metadata
