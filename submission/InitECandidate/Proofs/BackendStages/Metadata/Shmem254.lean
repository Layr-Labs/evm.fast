import InitECandidate.Proofs.BackendStages.Metadata.Data254
import InitECandidate.Proofs.BackendStages.Padded254
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem walkStep254 : walkShmemLines Padded254.lines 187360 beforeFfis254 beforeShmem254 = (189000, afterFfis254, afterShmem254) := by
  kernel_rfl
theorem shmemStep254 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded254 :: rest) 187360 beforeFfis254 beforeShmem254 = LabToTarget.getShmemInfo rest 189000 afterFfis254 afterShmem254 := by
  rw [getShmemInfo_section, walkStep254]
theorem symbolLength254 : LabToTarget.secLength Padded254.lines 0 = 1640 := by
  kernel_rfl
#print axioms shmemStep254
#print axioms symbolLength254
end InitECandidate.Proofs.BackendStages.Metadata
