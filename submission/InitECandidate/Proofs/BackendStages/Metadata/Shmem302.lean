import InitECandidate.Proofs.BackendStages.Metadata.Data302
import InitECandidate.Proofs.BackendStages.Padded302
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem walkStep302 : walkShmemLines Padded302.lines 236964 beforeFfis302 beforeShmem302 = (239328, afterFfis302, afterShmem302) := by
  kernel_rfl
theorem shmemStep302 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded302 :: rest) 236964 beforeFfis302 beforeShmem302 = LabToTarget.getShmemInfo rest 239328 afterFfis302 afterShmem302 := by
  rw [getShmemInfo_section, walkStep302]
theorem symbolLength302 : LabToTarget.secLength Padded302.lines 0 = 2364 := by
  kernel_rfl
#print axioms shmemStep302
#print axioms symbolLength302
end InitECandidate.Proofs.BackendStages.Metadata
