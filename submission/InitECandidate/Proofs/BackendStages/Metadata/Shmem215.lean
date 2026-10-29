import InitECandidate.Proofs.BackendStages.Metadata.Data215
import InitECandidate.Proofs.BackendStages.Padded215
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem walkStep215 : walkShmemLines Padded215.lines 123944 beforeFfis215 beforeShmem215 = (124004, afterFfis215, afterShmem215) := by
  kernel_rfl
theorem shmemStep215 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded215 :: rest) 123944 beforeFfis215 beforeShmem215 = LabToTarget.getShmemInfo rest 124004 afterFfis215 afterShmem215 := by
  rw [getShmemInfo_section, walkStep215]
theorem symbolLength215 : LabToTarget.secLength Padded215.lines 0 = 60 := by
  kernel_rfl
#print axioms shmemStep215
#print axioms symbolLength215
end InitECandidate.Proofs.BackendStages.Metadata
