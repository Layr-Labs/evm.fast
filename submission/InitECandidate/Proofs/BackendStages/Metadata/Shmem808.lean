import InitECandidate.Proofs.BackendStages.Metadata.Data808
import InitECandidate.Proofs.BackendStages.Padded808
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem walkStep808 : walkShmemLines Padded808.lines 866760 beforeFfis808 beforeShmem808 = (870996, afterFfis808, afterShmem808) := by
  kernel_rfl
theorem shmemStep808 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded808 :: rest) 866760 beforeFfis808 beforeShmem808 = LabToTarget.getShmemInfo rest 870996 afterFfis808 afterShmem808 := by
  rw [getShmemInfo_section, walkStep808]
theorem symbolLength808 : LabToTarget.secLength Padded808.lines 0 = 4236 := by
  kernel_rfl
#print axioms shmemStep808
#print axioms symbolLength808
end InitECandidate.Proofs.BackendStages.Metadata
