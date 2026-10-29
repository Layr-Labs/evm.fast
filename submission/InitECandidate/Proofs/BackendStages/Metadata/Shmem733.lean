import InitECandidate.Proofs.BackendStages.Metadata.Data733
import InitECandidate.Proofs.BackendStages.Padded733
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem walkStep733 : walkShmemLines Padded733.lines 733808 beforeFfis733 beforeShmem733 = (734100, afterFfis733, afterShmem733) := by
  kernel_rfl
theorem shmemStep733 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded733 :: rest) 733808 beforeFfis733 beforeShmem733 = LabToTarget.getShmemInfo rest 734100 afterFfis733 afterShmem733 := by
  rw [getShmemInfo_section, walkStep733]
theorem symbolLength733 : LabToTarget.secLength Padded733.lines 0 = 292 := by
  kernel_rfl
#print axioms shmemStep733
#print axioms symbolLength733
end InitECandidate.Proofs.BackendStages.Metadata
