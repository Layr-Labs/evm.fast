import InitECandidate.Proofs.BackendStages.Metadata.Data418
import InitECandidate.Proofs.BackendStages.Padded418
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem walkStep418 : walkShmemLines Padded418.lines 312580 beforeFfis418 beforeShmem418 = (312884, afterFfis418, afterShmem418) := by
  kernel_rfl
theorem shmemStep418 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded418 :: rest) 312580 beforeFfis418 beforeShmem418 = LabToTarget.getShmemInfo rest 312884 afterFfis418 afterShmem418 := by
  rw [getShmemInfo_section, walkStep418]
theorem symbolLength418 : LabToTarget.secLength Padded418.lines 0 = 304 := by
  kernel_rfl
#print axioms shmemStep418
#print axioms symbolLength418
end InitECandidate.Proofs.BackendStages.Metadata
