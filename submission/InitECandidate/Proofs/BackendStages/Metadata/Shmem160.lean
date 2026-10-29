import InitECandidate.Proofs.BackendStages.Metadata.Data160
import InitECandidate.Proofs.BackendStages.Padded160
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem walkStep160 : walkShmemLines Padded160.lines 87592 beforeFfis160 beforeShmem160 = (87860, afterFfis160, afterShmem160) := by
  kernel_rfl
theorem shmemStep160 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded160 :: rest) 87592 beforeFfis160 beforeShmem160 = LabToTarget.getShmemInfo rest 87860 afterFfis160 afterShmem160 := by
  rw [getShmemInfo_section, walkStep160]
theorem symbolLength160 : LabToTarget.secLength Padded160.lines 0 = 268 := by
  kernel_rfl
#print axioms shmemStep160
#print axioms symbolLength160
end InitECandidate.Proofs.BackendStages.Metadata
