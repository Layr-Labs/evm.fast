import InitECandidate.Proofs.BackendStages.Metadata.Data402
import InitECandidate.Proofs.BackendStages.Padded402
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem walkStep402 : walkShmemLines Padded402.lines 305292 beforeFfis402 beforeShmem402 = (305660, afterFfis402, afterShmem402) := by
  kernel_rfl
theorem shmemStep402 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded402 :: rest) 305292 beforeFfis402 beforeShmem402 = LabToTarget.getShmemInfo rest 305660 afterFfis402 afterShmem402 := by
  rw [getShmemInfo_section, walkStep402]
theorem symbolLength402 : LabToTarget.secLength Padded402.lines 0 = 368 := by
  kernel_rfl
#print axioms shmemStep402
#print axioms symbolLength402
end InitECandidate.Proofs.BackendStages.Metadata
