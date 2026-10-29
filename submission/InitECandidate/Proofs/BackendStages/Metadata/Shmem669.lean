import InitECandidate.Proofs.BackendStages.Metadata.Data669
import InitECandidate.Proofs.BackendStages.Padded669
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem walkStep669 : walkShmemLines Padded669.lines 600100 beforeFfis669 beforeShmem669 = (602020, afterFfis669, afterShmem669) := by
  kernel_rfl
theorem shmemStep669 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded669 :: rest) 600100 beforeFfis669 beforeShmem669 = LabToTarget.getShmemInfo rest 602020 afterFfis669 afterShmem669 := by
  rw [getShmemInfo_section, walkStep669]
theorem symbolLength669 : LabToTarget.secLength Padded669.lines 0 = 1920 := by
  kernel_rfl
#print axioms shmemStep669
#print axioms symbolLength669
end InitECandidate.Proofs.BackendStages.Metadata
