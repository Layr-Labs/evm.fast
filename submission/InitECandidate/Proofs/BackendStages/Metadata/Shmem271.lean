import InitECandidate.Proofs.BackendStages.Metadata.Data271
import InitECandidate.Proofs.BackendStages.Padded271
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem walkStep271 : walkShmemLines Padded271.lines 208508 beforeFfis271 beforeShmem271 = (208784, afterFfis271, afterShmem271) := by
  kernel_rfl
theorem shmemStep271 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded271 :: rest) 208508 beforeFfis271 beforeShmem271 = LabToTarget.getShmemInfo rest 208784 afterFfis271 afterShmem271 := by
  rw [getShmemInfo_section, walkStep271]
theorem symbolLength271 : LabToTarget.secLength Padded271.lines 0 = 276 := by
  kernel_rfl
#print axioms shmemStep271
#print axioms symbolLength271
end InitECandidate.Proofs.BackendStages.Metadata
