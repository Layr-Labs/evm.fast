import InitECandidate.Proofs.BackendStages.Metadata.Data785
import InitECandidate.Proofs.BackendStages.Padded785
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem walkStep785 : walkShmemLines Padded785.lines 803436 beforeFfis785 beforeShmem785 = (804640, afterFfis785, afterShmem785) := by
  kernel_rfl
theorem shmemStep785 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded785 :: rest) 803436 beforeFfis785 beforeShmem785 = LabToTarget.getShmemInfo rest 804640 afterFfis785 afterShmem785 := by
  rw [getShmemInfo_section, walkStep785]
theorem symbolLength785 : LabToTarget.secLength Padded785.lines 0 = 1204 := by
  kernel_rfl
#print axioms shmemStep785
#print axioms symbolLength785
end InitECandidate.Proofs.BackendStages.Metadata
