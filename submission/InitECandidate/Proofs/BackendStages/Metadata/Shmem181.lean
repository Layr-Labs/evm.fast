import InitECandidate.Proofs.BackendStages.Metadata.Data181
import InitECandidate.Proofs.BackendStages.Padded181
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem walkStep181 : walkShmemLines Padded181.lines 97596 beforeFfis181 beforeShmem181 = (97768, afterFfis181, afterShmem181) := by
  kernel_rfl
theorem shmemStep181 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded181 :: rest) 97596 beforeFfis181 beforeShmem181 = LabToTarget.getShmemInfo rest 97768 afterFfis181 afterShmem181 := by
  rw [getShmemInfo_section, walkStep181]
theorem symbolLength181 : LabToTarget.secLength Padded181.lines 0 = 172 := by
  kernel_rfl
#print axioms shmemStep181
#print axioms symbolLength181
end InitECandidate.Proofs.BackendStages.Metadata
