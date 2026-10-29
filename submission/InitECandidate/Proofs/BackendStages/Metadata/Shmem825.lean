import InitECandidate.Proofs.BackendStages.Metadata.Data825
import InitECandidate.Proofs.BackendStages.Padded825
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem walkStep825 : walkShmemLines Padded825.lines 893644 beforeFfis825 beforeShmem825 = (894332, afterFfis825, afterShmem825) := by
  kernel_rfl
theorem shmemStep825 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded825 :: rest) 893644 beforeFfis825 beforeShmem825 = LabToTarget.getShmemInfo rest 894332 afterFfis825 afterShmem825 := by
  rw [getShmemInfo_section, walkStep825]
theorem symbolLength825 : LabToTarget.secLength Padded825.lines 0 = 688 := by
  kernel_rfl
#print axioms shmemStep825
#print axioms symbolLength825
end InitECandidate.Proofs.BackendStages.Metadata
