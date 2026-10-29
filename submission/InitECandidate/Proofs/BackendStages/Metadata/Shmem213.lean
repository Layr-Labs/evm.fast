import InitECandidate.Proofs.BackendStages.Metadata.Data213
import InitECandidate.Proofs.BackendStages.Padded213
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem walkStep213 : walkShmemLines Padded213.lines 123860 beforeFfis213 beforeShmem213 = (123900, afterFfis213, afterShmem213) := by
  kernel_rfl
theorem shmemStep213 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded213 :: rest) 123860 beforeFfis213 beforeShmem213 = LabToTarget.getShmemInfo rest 123900 afterFfis213 afterShmem213 := by
  rw [getShmemInfo_section, walkStep213]
theorem symbolLength213 : LabToTarget.secLength Padded213.lines 0 = 40 := by
  kernel_rfl
#print axioms shmemStep213
#print axioms symbolLength213
end InitECandidate.Proofs.BackendStages.Metadata
