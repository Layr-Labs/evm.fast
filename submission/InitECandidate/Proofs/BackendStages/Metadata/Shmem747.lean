import InitECandidate.Proofs.BackendStages.Metadata.Data747
import InitECandidate.Proofs.BackendStages.Padded747
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem walkStep747 : walkShmemLines Padded747.lines 746140 beforeFfis747 beforeShmem747 = (746288, afterFfis747, afterShmem747) := by
  kernel_rfl
theorem shmemStep747 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded747 :: rest) 746140 beforeFfis747 beforeShmem747 = LabToTarget.getShmemInfo rest 746288 afterFfis747 afterShmem747 := by
  rw [getShmemInfo_section, walkStep747]
theorem symbolLength747 : LabToTarget.secLength Padded747.lines 0 = 148 := by
  kernel_rfl
#print axioms shmemStep747
#print axioms symbolLength747
end InitECandidate.Proofs.BackendStages.Metadata
