import InitECandidate.Proofs.BackendStages.Metadata.Data489
import InitECandidate.Proofs.BackendStages.Padded489
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem walkStep489 : walkShmemLines Padded489.lines 365004 beforeFfis489 beforeShmem489 = (366644, afterFfis489, afterShmem489) := by
  kernel_rfl
theorem shmemStep489 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded489 :: rest) 365004 beforeFfis489 beforeShmem489 = LabToTarget.getShmemInfo rest 366644 afterFfis489 afterShmem489 := by
  rw [getShmemInfo_section, walkStep489]
theorem symbolLength489 : LabToTarget.secLength Padded489.lines 0 = 1640 := by
  kernel_rfl
#print axioms shmemStep489
#print axioms symbolLength489
end InitECandidate.Proofs.BackendStages.Metadata
