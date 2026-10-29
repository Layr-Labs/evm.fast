import InitECandidate.Proofs.BackendStages.Metadata.Data315
import InitECandidate.Proofs.BackendStages.Padded315
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem walkStep315 : walkShmemLines Padded315.lines 246252 beforeFfis315 beforeShmem315 = (248560, afterFfis315, afterShmem315) := by
  kernel_rfl
theorem shmemStep315 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded315 :: rest) 246252 beforeFfis315 beforeShmem315 = LabToTarget.getShmemInfo rest 248560 afterFfis315 afterShmem315 := by
  rw [getShmemInfo_section, walkStep315]
theorem symbolLength315 : LabToTarget.secLength Padded315.lines 0 = 2308 := by
  kernel_rfl
#print axioms shmemStep315
#print axioms symbolLength315
end InitECandidate.Proofs.BackendStages.Metadata
