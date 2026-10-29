import InitECandidate.Proofs.BackendStages.Metadata.Data111
import InitECandidate.Proofs.BackendStages.Padded111
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem walkStep111 : walkShmemLines Padded111.lines 11756 beforeFfis111 beforeShmem111 = (11776, afterFfis111, afterShmem111) := by
  kernel_rfl
theorem shmemStep111 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded111 :: rest) 11756 beforeFfis111 beforeShmem111 = LabToTarget.getShmemInfo rest 11776 afterFfis111 afterShmem111 := by
  rw [getShmemInfo_section, walkStep111]
theorem symbolLength111 : LabToTarget.secLength Padded111.lines 0 = 20 := by
  kernel_rfl
#print axioms shmemStep111
#print axioms symbolLength111
end InitECandidate.Proofs.BackendStages.Metadata
