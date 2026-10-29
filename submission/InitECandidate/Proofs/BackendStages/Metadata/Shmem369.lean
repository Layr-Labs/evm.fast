import InitECandidate.Proofs.BackendStages.Metadata.Data369
import InitECandidate.Proofs.BackendStages.Padded369
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem walkStep369 : walkShmemLines Padded369.lines 286436 beforeFfis369 beforeShmem369 = (286592, afterFfis369, afterShmem369) := by
  kernel_rfl
theorem shmemStep369 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded369 :: rest) 286436 beforeFfis369 beforeShmem369 = LabToTarget.getShmemInfo rest 286592 afterFfis369 afterShmem369 := by
  rw [getShmemInfo_section, walkStep369]
theorem symbolLength369 : LabToTarget.secLength Padded369.lines 0 = 156 := by
  kernel_rfl
#print axioms shmemStep369
#print axioms symbolLength369
end InitECandidate.Proofs.BackendStages.Metadata
