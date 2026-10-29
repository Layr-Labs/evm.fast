import InitECandidate.Proofs.BackendStages.Metadata.Data273
import InitECandidate.Proofs.BackendStages.Padded273
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem walkStep273 : walkShmemLines Padded273.lines 209000 beforeFfis273 beforeShmem273 = (209188, afterFfis273, afterShmem273) := by
  kernel_rfl
theorem shmemStep273 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded273 :: rest) 209000 beforeFfis273 beforeShmem273 = LabToTarget.getShmemInfo rest 209188 afterFfis273 afterShmem273 := by
  rw [getShmemInfo_section, walkStep273]
theorem symbolLength273 : LabToTarget.secLength Padded273.lines 0 = 188 := by
  kernel_rfl
#print axioms shmemStep273
#print axioms symbolLength273
end InitECandidate.Proofs.BackendStages.Metadata
