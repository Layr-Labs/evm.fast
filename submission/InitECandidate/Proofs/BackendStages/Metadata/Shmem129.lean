import InitECandidate.Proofs.BackendStages.Metadata.Data129
import InitECandidate.Proofs.BackendStages.Padded129
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem walkStep129 : walkShmemLines Padded129.lines 22068 beforeFfis129 beforeShmem129 = (23176, afterFfis129, afterShmem129) := by
  kernel_rfl
theorem shmemStep129 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded129 :: rest) 22068 beforeFfis129 beforeShmem129 = LabToTarget.getShmemInfo rest 23176 afterFfis129 afterShmem129 := by
  rw [getShmemInfo_section, walkStep129]
theorem symbolLength129 : LabToTarget.secLength Padded129.lines 0 = 1108 := by
  kernel_rfl
#print axioms shmemStep129
#print axioms symbolLength129
end InitECandidate.Proofs.BackendStages.Metadata
