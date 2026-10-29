import InitECandidate.Proofs.BackendStages.Metadata.Data232
import InitECandidate.Proofs.BackendStages.Padded232
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem walkStep232 : walkShmemLines Padded232.lines 159852 beforeFfis232 beforeShmem232 = (160492, afterFfis232, afterShmem232) := by
  kernel_rfl
theorem shmemStep232 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded232 :: rest) 159852 beforeFfis232 beforeShmem232 = LabToTarget.getShmemInfo rest 160492 afterFfis232 afterShmem232 := by
  rw [getShmemInfo_section, walkStep232]
theorem symbolLength232 : LabToTarget.secLength Padded232.lines 0 = 640 := by
  kernel_rfl
#print axioms shmemStep232
#print axioms symbolLength232
end InitECandidate.Proofs.BackendStages.Metadata
