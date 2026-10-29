import InitECandidate.Proofs.BackendStages.Metadata.Data631
import InitECandidate.Proofs.BackendStages.Padded631
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem walkStep631 : walkShmemLines Padded631.lines 526516 beforeFfis631 beforeShmem631 = (528028, afterFfis631, afterShmem631) := by
  kernel_rfl
theorem shmemStep631 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded631 :: rest) 526516 beforeFfis631 beforeShmem631 = LabToTarget.getShmemInfo rest 528028 afterFfis631 afterShmem631 := by
  rw [getShmemInfo_section, walkStep631]
theorem symbolLength631 : LabToTarget.secLength Padded631.lines 0 = 1512 := by
  kernel_rfl
#print axioms shmemStep631
#print axioms symbolLength631
end InitECandidate.Proofs.BackendStages.Metadata
