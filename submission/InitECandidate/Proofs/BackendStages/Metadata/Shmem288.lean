import InitECandidate.Proofs.BackendStages.Metadata.Data288
import InitECandidate.Proofs.BackendStages.Padded288
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem walkStep288 : walkShmemLines Padded288.lines 230160 beforeFfis288 beforeShmem288 = (230384, afterFfis288, afterShmem288) := by
  kernel_rfl
theorem shmemStep288 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded288 :: rest) 230160 beforeFfis288 beforeShmem288 = LabToTarget.getShmemInfo rest 230384 afterFfis288 afterShmem288 := by
  rw [getShmemInfo_section, walkStep288]
theorem symbolLength288 : LabToTarget.secLength Padded288.lines 0 = 224 := by
  kernel_rfl
#print axioms shmemStep288
#print axioms symbolLength288
end InitECandidate.Proofs.BackendStages.Metadata
