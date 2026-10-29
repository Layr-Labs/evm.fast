import InitECandidate.Proofs.BackendStages.Metadata.Data112
import InitECandidate.Proofs.BackendStages.Padded112
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem walkStep112 : walkShmemLines Padded112.lines 11776 beforeFfis112 beforeShmem112 = (11796, afterFfis112, afterShmem112) := by
  kernel_rfl
theorem shmemStep112 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded112 :: rest) 11776 beforeFfis112 beforeShmem112 = LabToTarget.getShmemInfo rest 11796 afterFfis112 afterShmem112 := by
  rw [getShmemInfo_section, walkStep112]
theorem symbolLength112 : LabToTarget.secLength Padded112.lines 0 = 20 := by
  kernel_rfl
#print axioms shmemStep112
#print axioms symbolLength112
end InitECandidate.Proofs.BackendStages.Metadata
