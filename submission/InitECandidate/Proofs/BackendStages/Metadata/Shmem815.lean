import InitECandidate.Proofs.BackendStages.Metadata.Data815
import InitECandidate.Proofs.BackendStages.Padded815
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem walkStep815 : walkShmemLines Padded815.lines 880788 beforeFfis815 beforeShmem815 = (881848, afterFfis815, afterShmem815) := by
  kernel_rfl
theorem shmemStep815 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded815 :: rest) 880788 beforeFfis815 beforeShmem815 = LabToTarget.getShmemInfo rest 881848 afterFfis815 afterShmem815 := by
  rw [getShmemInfo_section, walkStep815]
theorem symbolLength815 : LabToTarget.secLength Padded815.lines 0 = 1060 := by
  kernel_rfl
#print axioms shmemStep815
#print axioms symbolLength815
end InitECandidate.Proofs.BackendStages.Metadata
