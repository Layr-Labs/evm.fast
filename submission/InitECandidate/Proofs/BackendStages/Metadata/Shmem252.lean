import InitECandidate.Proofs.BackendStages.Metadata.Data252
import InitECandidate.Proofs.BackendStages.Padded252
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem walkStep252 : walkShmemLines Padded252.lines 184644 beforeFfis252 beforeShmem252 = (185060, afterFfis252, afterShmem252) := by
  kernel_rfl
theorem shmemStep252 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded252 :: rest) 184644 beforeFfis252 beforeShmem252 = LabToTarget.getShmemInfo rest 185060 afterFfis252 afterShmem252 := by
  rw [getShmemInfo_section, walkStep252]
theorem symbolLength252 : LabToTarget.secLength Padded252.lines 0 = 416 := by
  kernel_rfl
#print axioms shmemStep252
#print axioms symbolLength252
end InitECandidate.Proofs.BackendStages.Metadata
