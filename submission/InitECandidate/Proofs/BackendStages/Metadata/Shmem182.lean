import InitECandidate.Proofs.BackendStages.Metadata.Data182
import InitECandidate.Proofs.BackendStages.Padded182
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem walkStep182 : walkShmemLines Padded182.lines 97768 beforeFfis182 beforeShmem182 = (98488, afterFfis182, afterShmem182) := by
  kernel_rfl
theorem shmemStep182 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded182 :: rest) 97768 beforeFfis182 beforeShmem182 = LabToTarget.getShmemInfo rest 98488 afterFfis182 afterShmem182 := by
  rw [getShmemInfo_section, walkStep182]
theorem symbolLength182 : LabToTarget.secLength Padded182.lines 0 = 720 := by
  kernel_rfl
#print axioms shmemStep182
#print axioms symbolLength182
end InitECandidate.Proofs.BackendStages.Metadata
