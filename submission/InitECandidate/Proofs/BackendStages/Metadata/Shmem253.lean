import InitECandidate.Proofs.BackendStages.Metadata.Data253
import InitECandidate.Proofs.BackendStages.Padded253
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem walkStep253 : walkShmemLines Padded253.lines 185060 beforeFfis253 beforeShmem253 = (187360, afterFfis253, afterShmem253) := by
  kernel_rfl
theorem shmemStep253 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded253 :: rest) 185060 beforeFfis253 beforeShmem253 = LabToTarget.getShmemInfo rest 187360 afterFfis253 afterShmem253 := by
  rw [getShmemInfo_section, walkStep253]
theorem symbolLength253 : LabToTarget.secLength Padded253.lines 0 = 2300 := by
  kernel_rfl
#print axioms shmemStep253
#print axioms symbolLength253
end InitECandidate.Proofs.BackendStages.Metadata
