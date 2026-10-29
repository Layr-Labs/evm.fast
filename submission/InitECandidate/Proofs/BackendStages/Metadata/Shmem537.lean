import InitECandidate.Proofs.BackendStages.Metadata.Data537
import InitECandidate.Proofs.BackendStages.Padded537
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem walkStep537 : walkShmemLines Padded537.lines 399204 beforeFfis537 beforeShmem537 = (399648, afterFfis537, afterShmem537) := by
  kernel_rfl
theorem shmemStep537 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded537 :: rest) 399204 beforeFfis537 beforeShmem537 = LabToTarget.getShmemInfo rest 399648 afterFfis537 afterShmem537 := by
  rw [getShmemInfo_section, walkStep537]
theorem symbolLength537 : LabToTarget.secLength Padded537.lines 0 = 444 := by
  kernel_rfl
#print axioms shmemStep537
#print axioms symbolLength537
end InitECandidate.Proofs.BackendStages.Metadata
