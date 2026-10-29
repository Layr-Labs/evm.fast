import InitECandidate.Proofs.BackendStages.Metadata.Data529
import InitECandidate.Proofs.BackendStages.Padded529
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem walkStep529 : walkShmemLines Padded529.lines 392096 beforeFfis529 beforeShmem529 = (392344, afterFfis529, afterShmem529) := by
  kernel_rfl
theorem shmemStep529 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded529 :: rest) 392096 beforeFfis529 beforeShmem529 = LabToTarget.getShmemInfo rest 392344 afterFfis529 afterShmem529 := by
  rw [getShmemInfo_section, walkStep529]
theorem symbolLength529 : LabToTarget.secLength Padded529.lines 0 = 248 := by
  kernel_rfl
#print axioms shmemStep529
#print axioms symbolLength529
end InitECandidate.Proofs.BackendStages.Metadata
