import InitECandidate.Proofs.BackendStages.Metadata.Data648
import InitECandidate.Proofs.BackendStages.Padded648
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem walkStep648 : walkShmemLines Padded648.lines 554392 beforeFfis648 beforeShmem648 = (554504, afterFfis648, afterShmem648) := by
  kernel_rfl
theorem shmemStep648 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded648 :: rest) 554392 beforeFfis648 beforeShmem648 = LabToTarget.getShmemInfo rest 554504 afterFfis648 afterShmem648 := by
  rw [getShmemInfo_section, walkStep648]
theorem symbolLength648 : LabToTarget.secLength Padded648.lines 0 = 112 := by
  kernel_rfl
#print axioms shmemStep648
#print axioms symbolLength648
end InitECandidate.Proofs.BackendStages.Metadata
