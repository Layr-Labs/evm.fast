import InitECandidate.Proofs.BackendStages.Metadata.Data93
import InitECandidate.Proofs.BackendStages.Padded93
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem walkStep93 : walkShmemLines Padded93.lines 9820 beforeFfis93 beforeShmem93 = (9836, afterFfis93, afterShmem93) := by
  kernel_rfl
theorem shmemStep93 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded93 :: rest) 9820 beforeFfis93 beforeShmem93 = LabToTarget.getShmemInfo rest 9836 afterFfis93 afterShmem93 := by
  rw [getShmemInfo_section, walkStep93]
theorem symbolLength93 : LabToTarget.secLength Padded93.lines 0 = 16 := by
  kernel_rfl
#print axioms shmemStep93
#print axioms symbolLength93
end InitECandidate.Proofs.BackendStages.Metadata
