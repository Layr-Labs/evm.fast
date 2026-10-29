import InitECandidate.Proofs.BackendStages.Metadata.Data221
import InitECandidate.Proofs.BackendStages.Padded221
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem walkStep221 : walkShmemLines Padded221.lines 125356 beforeFfis221 beforeShmem221 = (125436, afterFfis221, afterShmem221) := by
  kernel_rfl
theorem shmemStep221 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded221 :: rest) 125356 beforeFfis221 beforeShmem221 = LabToTarget.getShmemInfo rest 125436 afterFfis221 afterShmem221 := by
  rw [getShmemInfo_section, walkStep221]
theorem symbolLength221 : LabToTarget.secLength Padded221.lines 0 = 80 := by
  kernel_rfl
#print axioms shmemStep221
#print axioms symbolLength221
end InitECandidate.Proofs.BackendStages.Metadata
