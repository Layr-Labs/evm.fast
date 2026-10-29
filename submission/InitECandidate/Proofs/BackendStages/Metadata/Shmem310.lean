import InitECandidate.Proofs.BackendStages.Metadata.Data310
import InitECandidate.Proofs.BackendStages.Padded310
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem walkStep310 : walkShmemLines Padded310.lines 242528 beforeFfis310 beforeShmem310 = (243236, afterFfis310, afterShmem310) := by
  kernel_rfl
theorem shmemStep310 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded310 :: rest) 242528 beforeFfis310 beforeShmem310 = LabToTarget.getShmemInfo rest 243236 afterFfis310 afterShmem310 := by
  rw [getShmemInfo_section, walkStep310]
theorem symbolLength310 : LabToTarget.secLength Padded310.lines 0 = 708 := by
  kernel_rfl
#print axioms shmemStep310
#print axioms symbolLength310
end InitECandidate.Proofs.BackendStages.Metadata
