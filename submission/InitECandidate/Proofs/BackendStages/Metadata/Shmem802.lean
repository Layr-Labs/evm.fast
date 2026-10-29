import InitECandidate.Proofs.BackendStages.Metadata.Data802
import InitECandidate.Proofs.BackendStages.Padded802
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem walkStep802 : walkShmemLines Padded802.lines 857148 beforeFfis802 beforeShmem802 = (858696, afterFfis802, afterShmem802) := by
  kernel_rfl
theorem shmemStep802 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded802 :: rest) 857148 beforeFfis802 beforeShmem802 = LabToTarget.getShmemInfo rest 858696 afterFfis802 afterShmem802 := by
  rw [getShmemInfo_section, walkStep802]
theorem symbolLength802 : LabToTarget.secLength Padded802.lines 0 = 1548 := by
  kernel_rfl
#print axioms shmemStep802
#print axioms symbolLength802
end InitECandidate.Proofs.BackendStages.Metadata
