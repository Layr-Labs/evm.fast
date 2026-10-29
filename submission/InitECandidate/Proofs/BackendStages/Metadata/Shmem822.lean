import InitECandidate.Proofs.BackendStages.Metadata.Data822
import InitECandidate.Proofs.BackendStages.Padded822
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem walkStep822 : walkShmemLines Padded822.lines 891272 beforeFfis822 beforeShmem822 = (892204, afterFfis822, afterShmem822) := by
  kernel_rfl
theorem shmemStep822 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded822 :: rest) 891272 beforeFfis822 beforeShmem822 = LabToTarget.getShmemInfo rest 892204 afterFfis822 afterShmem822 := by
  rw [getShmemInfo_section, walkStep822]
theorem symbolLength822 : LabToTarget.secLength Padded822.lines 0 = 932 := by
  kernel_rfl
#print axioms shmemStep822
#print axioms symbolLength822
end InitECandidate.Proofs.BackendStages.Metadata
