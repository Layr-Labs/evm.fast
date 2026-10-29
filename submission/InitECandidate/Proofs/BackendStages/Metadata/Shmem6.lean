import InitECandidate.Proofs.BackendStages.Metadata.Data6
import InitECandidate.Proofs.BackendStages.Padded6
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem walkStep6 : walkShmemLines Padded6.lines 848 beforeFfis6 beforeShmem6 = (1000, afterFfis6, afterShmem6) := by
  kernel_rfl
theorem shmemStep6 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded6 :: rest) 848 beforeFfis6 beforeShmem6 = LabToTarget.getShmemInfo rest 1000 afterFfis6 afterShmem6 := by
  rw [getShmemInfo_section, walkStep6]
theorem symbolLength6 : LabToTarget.secLength Padded6.lines 0 = 152 := by
  kernel_rfl
#print axioms shmemStep6
#print axioms symbolLength6
end InitECandidate.Proofs.BackendStages.Metadata
