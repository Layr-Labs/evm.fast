import InitECandidate.Proofs.BackendStages.Metadata.Data399
import InitECandidate.Proofs.BackendStages.Padded399
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem walkStep399 : walkShmemLines Padded399.lines 303220 beforeFfis399 beforeShmem399 = (303396, afterFfis399, afterShmem399) := by
  kernel_rfl
theorem shmemStep399 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded399 :: rest) 303220 beforeFfis399 beforeShmem399 = LabToTarget.getShmemInfo rest 303396 afterFfis399 afterShmem399 := by
  rw [getShmemInfo_section, walkStep399]
theorem symbolLength399 : LabToTarget.secLength Padded399.lines 0 = 176 := by
  kernel_rfl
#print axioms shmemStep399
#print axioms symbolLength399
end InitECandidate.Proofs.BackendStages.Metadata
