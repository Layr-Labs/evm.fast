import InitECandidate.Proofs.BackendStages.Metadata.Data788
import InitECandidate.Proofs.BackendStages.Padded788
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem walkStep788 : walkShmemLines Padded788.lines 807124 beforeFfis788 beforeShmem788 = (808180, afterFfis788, afterShmem788) := by
  kernel_rfl
theorem shmemStep788 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded788 :: rest) 807124 beforeFfis788 beforeShmem788 = LabToTarget.getShmemInfo rest 808180 afterFfis788 afterShmem788 := by
  rw [getShmemInfo_section, walkStep788]
theorem symbolLength788 : LabToTarget.secLength Padded788.lines 0 = 1056 := by
  kernel_rfl
#print axioms shmemStep788
#print axioms symbolLength788
end InitECandidate.Proofs.BackendStages.Metadata
