import InitECandidate.Proofs.BackendStages.Metadata.Data321
import InitECandidate.Proofs.BackendStages.Padded321
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem walkStep321 : walkShmemLines Padded321.lines 253156 beforeFfis321 beforeShmem321 = (253888, afterFfis321, afterShmem321) := by
  kernel_rfl
theorem shmemStep321 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded321 :: rest) 253156 beforeFfis321 beforeShmem321 = LabToTarget.getShmemInfo rest 253888 afterFfis321 afterShmem321 := by
  rw [getShmemInfo_section, walkStep321]
theorem symbolLength321 : LabToTarget.secLength Padded321.lines 0 = 732 := by
  kernel_rfl
#print axioms shmemStep321
#print axioms symbolLength321
end InitECandidate.Proofs.BackendStages.Metadata
