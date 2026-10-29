import InitECandidate.Proofs.BackendStages.Metadata.Data281
import InitECandidate.Proofs.BackendStages.Padded281
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem walkStep281 : walkShmemLines Padded281.lines 222564 beforeFfis281 beforeShmem281 = (223872, afterFfis281, afterShmem281) := by
  kernel_rfl
theorem shmemStep281 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded281 :: rest) 222564 beforeFfis281 beforeShmem281 = LabToTarget.getShmemInfo rest 223872 afterFfis281 afterShmem281 := by
  rw [getShmemInfo_section, walkStep281]
theorem symbolLength281 : LabToTarget.secLength Padded281.lines 0 = 1308 := by
  kernel_rfl
#print axioms shmemStep281
#print axioms symbolLength281
end InitECandidate.Proofs.BackendStages.Metadata
