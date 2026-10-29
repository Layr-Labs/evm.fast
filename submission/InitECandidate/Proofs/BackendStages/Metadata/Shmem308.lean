import InitECandidate.Proofs.BackendStages.Metadata.Data308
import InitECandidate.Proofs.BackendStages.Padded308
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem walkStep308 : walkShmemLines Padded308.lines 242172 beforeFfis308 beforeShmem308 = (242360, afterFfis308, afterShmem308) := by
  kernel_rfl
theorem shmemStep308 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded308 :: rest) 242172 beforeFfis308 beforeShmem308 = LabToTarget.getShmemInfo rest 242360 afterFfis308 afterShmem308 := by
  rw [getShmemInfo_section, walkStep308]
theorem symbolLength308 : LabToTarget.secLength Padded308.lines 0 = 188 := by
  kernel_rfl
#print axioms shmemStep308
#print axioms symbolLength308
end InitECandidate.Proofs.BackendStages.Metadata
