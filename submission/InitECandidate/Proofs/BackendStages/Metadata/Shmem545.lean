import InitECandidate.Proofs.BackendStages.Metadata.Data545
import InitECandidate.Proofs.BackendStages.Padded545
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem walkStep545 : walkShmemLines Padded545.lines 402300 beforeFfis545 beforeShmem545 = (402472, afterFfis545, afterShmem545) := by
  kernel_rfl
theorem shmemStep545 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded545 :: rest) 402300 beforeFfis545 beforeShmem545 = LabToTarget.getShmemInfo rest 402472 afterFfis545 afterShmem545 := by
  rw [getShmemInfo_section, walkStep545]
theorem symbolLength545 : LabToTarget.secLength Padded545.lines 0 = 172 := by
  kernel_rfl
#print axioms shmemStep545
#print axioms symbolLength545
end InitECandidate.Proofs.BackendStages.Metadata
