import InitECandidate.Proofs.BackendStages.Metadata.Data363
import InitECandidate.Proofs.BackendStages.Padded363
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem walkStep363 : walkShmemLines Padded363.lines 280016 beforeFfis363 beforeShmem363 = (280748, afterFfis363, afterShmem363) := by
  kernel_rfl
theorem shmemStep363 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded363 :: rest) 280016 beforeFfis363 beforeShmem363 = LabToTarget.getShmemInfo rest 280748 afterFfis363 afterShmem363 := by
  rw [getShmemInfo_section, walkStep363]
theorem symbolLength363 : LabToTarget.secLength Padded363.lines 0 = 732 := by
  kernel_rfl
#print axioms shmemStep363
#print axioms symbolLength363
end InitECandidate.Proofs.BackendStages.Metadata
