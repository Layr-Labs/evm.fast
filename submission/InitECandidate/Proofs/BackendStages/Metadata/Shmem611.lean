import InitECandidate.Proofs.BackendStages.Metadata.Data611
import InitECandidate.Proofs.BackendStages.Padded611
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem walkStep611 : walkShmemLines Padded611.lines 483232 beforeFfis611 beforeShmem611 = (483512, afterFfis611, afterShmem611) := by
  kernel_rfl
theorem shmemStep611 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded611 :: rest) 483232 beforeFfis611 beforeShmem611 = LabToTarget.getShmemInfo rest 483512 afterFfis611 afterShmem611 := by
  rw [getShmemInfo_section, walkStep611]
theorem symbolLength611 : LabToTarget.secLength Padded611.lines 0 = 280 := by
  kernel_rfl
#print axioms shmemStep611
#print axioms symbolLength611
end InitECandidate.Proofs.BackendStages.Metadata
