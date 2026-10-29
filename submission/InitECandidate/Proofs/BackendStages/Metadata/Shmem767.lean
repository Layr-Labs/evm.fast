import InitECandidate.Proofs.BackendStages.Metadata.Data767
import InitECandidate.Proofs.BackendStages.Padded767
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem walkStep767 : walkShmemLines Padded767.lines 767376 beforeFfis767 beforeShmem767 = (767408, afterFfis767, afterShmem767) := by
  kernel_rfl
theorem shmemStep767 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded767 :: rest) 767376 beforeFfis767 beforeShmem767 = LabToTarget.getShmemInfo rest 767408 afterFfis767 afterShmem767 := by
  rw [getShmemInfo_section, walkStep767]
theorem symbolLength767 : LabToTarget.secLength Padded767.lines 0 = 32 := by
  kernel_rfl
#print axioms shmemStep767
#print axioms symbolLength767
end InitECandidate.Proofs.BackendStages.Metadata
