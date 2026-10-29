import InitECandidate.Proofs.BackendStages.Metadata.Data816
import InitECandidate.Proofs.BackendStages.Padded816
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem walkStep816 : walkShmemLines Padded816.lines 881848 beforeFfis816 beforeShmem816 = (883140, afterFfis816, afterShmem816) := by
  kernel_rfl
theorem shmemStep816 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded816 :: rest) 881848 beforeFfis816 beforeShmem816 = LabToTarget.getShmemInfo rest 883140 afterFfis816 afterShmem816 := by
  rw [getShmemInfo_section, walkStep816]
theorem symbolLength816 : LabToTarget.secLength Padded816.lines 0 = 1292 := by
  kernel_rfl
#print axioms shmemStep816
#print axioms symbolLength816
end InitECandidate.Proofs.BackendStages.Metadata
