import InitECandidate.Proofs.BackendStages.Metadata.Data814
import InitECandidate.Proofs.BackendStages.Padded814
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem walkStep814 : walkShmemLines Padded814.lines 878164 beforeFfis814 beforeShmem814 = (880788, afterFfis814, afterShmem814) := by
  kernel_rfl
theorem shmemStep814 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded814 :: rest) 878164 beforeFfis814 beforeShmem814 = LabToTarget.getShmemInfo rest 880788 afterFfis814 afterShmem814 := by
  rw [getShmemInfo_section, walkStep814]
theorem symbolLength814 : LabToTarget.secLength Padded814.lines 0 = 2624 := by
  kernel_rfl
#print axioms shmemStep814
#print axioms symbolLength814
end InitECandidate.Proofs.BackendStages.Metadata
