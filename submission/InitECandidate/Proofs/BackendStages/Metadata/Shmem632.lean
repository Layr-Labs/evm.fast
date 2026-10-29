import InitECandidate.Proofs.BackendStages.Metadata.Data632
import InitECandidate.Proofs.BackendStages.Padded632
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem walkStep632 : walkShmemLines Padded632.lines 528028 beforeFfis632 beforeShmem632 = (529140, afterFfis632, afterShmem632) := by
  kernel_rfl
theorem shmemStep632 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded632 :: rest) 528028 beforeFfis632 beforeShmem632 = LabToTarget.getShmemInfo rest 529140 afterFfis632 afterShmem632 := by
  rw [getShmemInfo_section, walkStep632]
theorem symbolLength632 : LabToTarget.secLength Padded632.lines 0 = 1112 := by
  kernel_rfl
#print axioms shmemStep632
#print axioms symbolLength632
end InitECandidate.Proofs.BackendStages.Metadata
