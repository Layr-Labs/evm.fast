import InitECandidate.Proofs.BackendStages.Metadata.Data592
import InitECandidate.Proofs.BackendStages.Padded592
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem walkStep592 : walkShmemLines Padded592.lines 448808 beforeFfis592 beforeShmem592 = (449304, afterFfis592, afterShmem592) := by
  kernel_rfl
theorem shmemStep592 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded592 :: rest) 448808 beforeFfis592 beforeShmem592 = LabToTarget.getShmemInfo rest 449304 afterFfis592 afterShmem592 := by
  rw [getShmemInfo_section, walkStep592]
theorem symbolLength592 : LabToTarget.secLength Padded592.lines 0 = 496 := by
  kernel_rfl
#print axioms shmemStep592
#print axioms symbolLength592
end InitECandidate.Proofs.BackendStages.Metadata
