import InitECandidate.Proofs.BackendStages.Metadata.Data853
import InitECandidate.Proofs.BackendStages.Padded853
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem walkStep853 : walkShmemLines Padded853.lines 933912 beforeFfis853 beforeShmem853 = (935620, afterFfis853, afterShmem853) := by
  kernel_rfl
theorem shmemStep853 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded853 :: rest) 933912 beforeFfis853 beforeShmem853 = LabToTarget.getShmemInfo rest 935620 afterFfis853 afterShmem853 := by
  rw [getShmemInfo_section, walkStep853]
theorem symbolLength853 : LabToTarget.secLength Padded853.lines 0 = 1708 := by
  kernel_rfl
#print axioms shmemStep853
#print axioms symbolLength853
end InitECandidate.Proofs.BackendStages.Metadata
