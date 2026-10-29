import InitECandidate.Proofs.BackendStages.Metadata.Data782
import InitECandidate.Proofs.BackendStages.Padded782
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem walkStep782 : walkShmemLines Padded782.lines 791672 beforeFfis782 beforeShmem782 = (796456, afterFfis782, afterShmem782) := by
  kernel_rfl
theorem shmemStep782 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded782 :: rest) 791672 beforeFfis782 beforeShmem782 = LabToTarget.getShmemInfo rest 796456 afterFfis782 afterShmem782 := by
  rw [getShmemInfo_section, walkStep782]
theorem symbolLength782 : LabToTarget.secLength Padded782.lines 0 = 4784 := by
  kernel_rfl
#print axioms shmemStep782
#print axioms symbolLength782
end InitECandidate.Proofs.BackendStages.Metadata
