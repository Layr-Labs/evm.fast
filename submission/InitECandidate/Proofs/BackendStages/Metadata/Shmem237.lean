import InitECandidate.Proofs.BackendStages.Metadata.Data237
import InitECandidate.Proofs.BackendStages.Padded237
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem walkStep237 : walkShmemLines Padded237.lines 173808 beforeFfis237 beforeShmem237 = (175256, afterFfis237, afterShmem237) := by
  kernel_rfl
theorem shmemStep237 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded237 :: rest) 173808 beforeFfis237 beforeShmem237 = LabToTarget.getShmemInfo rest 175256 afterFfis237 afterShmem237 := by
  rw [getShmemInfo_section, walkStep237]
theorem symbolLength237 : LabToTarget.secLength Padded237.lines 0 = 1448 := by
  kernel_rfl
#print axioms shmemStep237
#print axioms symbolLength237
end InitECandidate.Proofs.BackendStages.Metadata
