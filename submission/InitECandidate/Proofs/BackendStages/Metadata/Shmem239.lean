import InitECandidate.Proofs.BackendStages.Metadata.Data239
import InitECandidate.Proofs.BackendStages.Padded239
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem walkStep239 : walkShmemLines Padded239.lines 175528 beforeFfis239 beforeShmem239 = (176064, afterFfis239, afterShmem239) := by
  kernel_rfl
theorem shmemStep239 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded239 :: rest) 175528 beforeFfis239 beforeShmem239 = LabToTarget.getShmemInfo rest 176064 afterFfis239 afterShmem239 := by
  rw [getShmemInfo_section, walkStep239]
theorem symbolLength239 : LabToTarget.secLength Padded239.lines 0 = 536 := by
  kernel_rfl
#print axioms shmemStep239
#print axioms symbolLength239
end InitECandidate.Proofs.BackendStages.Metadata
