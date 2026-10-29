import InitECandidate.Proofs.BackendStages.Metadata.Data660
import InitECandidate.Proofs.BackendStages.Padded660
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem walkStep660 : walkShmemLines Padded660.lines 584456 beforeFfis660 beforeShmem660 = (584776, afterFfis660, afterShmem660) := by
  kernel_rfl
theorem shmemStep660 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded660 :: rest) 584456 beforeFfis660 beforeShmem660 = LabToTarget.getShmemInfo rest 584776 afterFfis660 afterShmem660 := by
  rw [getShmemInfo_section, walkStep660]
theorem symbolLength660 : LabToTarget.secLength Padded660.lines 0 = 320 := by
  kernel_rfl
#print axioms shmemStep660
#print axioms symbolLength660
end InitECandidate.Proofs.BackendStages.Metadata
