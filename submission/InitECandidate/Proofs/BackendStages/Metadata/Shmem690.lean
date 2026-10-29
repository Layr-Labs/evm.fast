import InitECandidate.Proofs.BackendStages.Metadata.Data690
import InitECandidate.Proofs.BackendStages.Padded690
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem walkStep690 : walkShmemLines Padded690.lines 630588 beforeFfis690 beforeShmem690 = (631196, afterFfis690, afterShmem690) := by
  kernel_rfl
theorem shmemStep690 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded690 :: rest) 630588 beforeFfis690 beforeShmem690 = LabToTarget.getShmemInfo rest 631196 afterFfis690 afterShmem690 := by
  rw [getShmemInfo_section, walkStep690]
theorem symbolLength690 : LabToTarget.secLength Padded690.lines 0 = 608 := by
  kernel_rfl
#print axioms shmemStep690
#print axioms symbolLength690
end InitECandidate.Proofs.BackendStages.Metadata
